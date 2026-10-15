#!/usr/bin/env python3
"""
==============================================================================
 Minecraft Datapack Phase 3 Validator
 Cross-version Overlay Fallback & Syntax Compatibility Analyzer
==============================================================================
"""

import os
import sys
import json
import re
from pathlib import Path

def bold(text): return f"\033[1m{text}\033[0m"
def green(text): return f"\033[92m{text}\033[0m"
def red(text): return f"\033[91m{text}\033[0m"
def yellow(text): return f"\033[93m{text}\033[0m"
def cyan(text): return f"\033[96m{text}\033[0m"
def gray(text): return f"\033[90m{text}\033[0m"

# Version feature constraints & checks
def check_file_compatibility_for_version(rel_path, content, version):
    """
    Checks if a file from main data/ contains syntax incompatible with an older version.
    Returns a list of issue descriptions.
    """
    issues = []
    
    # 1. Check loot tables / item modifiers for 1.21.11 (< 26.1)
    if version in ["1.21.11", "1.21.1", "1.21"]:
        if rel_path.startswith("data/") and rel_path.endswith(".json"):
            # 1.21.2 introduced components in loot tables
            if '"components"' in content or '"minecraft:set_components"' in content:
                # Check if it lacks the legacy 'tag' format
                if '"minecraft:set_nbt"' not in content and '"tag"' not in content:
                    issues.append("uses 1.21.2+ 'components' instead of legacy 1.21.1 'tag' / 'set_nbt'")
            if '"glider"' in content:
                issues.append("uses 'glider' component (introduced in 1.21.2)")
            if '"equippable"' in content:
                issues.append("uses 'equippable' component (introduced in 1.21.2)")
            if '"item_model"' in content:
                issues.append("uses 'item_model' component (introduced in 1.21.2)")
            if rel_path.startswith("data/stellarity/enchantment/"):
                if '"effects"' in content:
                    issues.append("uses 1.21.2+ enchantment 'effects' codec")

    # 2. Check for 26.1 / 26.2 specifics
    if version in ["26.1", "26.2"]:
        if rel_path.startswith("data/stellarity/recipe/"):
            # If recipes use 26.3+ new property formats
            pass

    # 3. Check functions for commands syntax
    if rel_path.endswith(".mcfunction"):
        for line_num, line in enumerate(content.splitlines(), 1):
            line_str = line.strip()
            if line_str.startswith("#"):
                continue
            # Example: posteffect command is 26.3+
            if "posteffect " in line_str and version in ["1.21.11", "26.1", "26.2"]:
                issues.append(f"line {line_num}: 'posteffect' command not supported in {version}")

    return issues

def run_phase3_validation(datapack_root):
    dp_path = Path(datapack_root).resolve()
    mcmeta_path = dp_path / "pack.mcmeta"
    if not mcmeta_path.exists():
        # check datapack/pack.mcmeta
        if (dp_path / "datapack" / "pack.mcmeta").exists():
            dp_path = dp_path / "datapack"
            mcmeta_path = dp_path / "pack.mcmeta"
        else:
            print(red(f"Error: No pack.mcmeta found at {dp_path}"))
            return False

    with open(mcmeta_path, "r", encoding="utf-8") as f:
        meta = json.load(f)

    overlays = meta.get("overlays", {}).get("entries", [])
    if not overlays:
        print(yellow("No overlays declared in pack.mcmeta. Phase 3 validation skipped."))
        return True

    main_data_dir = dp_path / "data"
    if not main_data_dir.exists():
        print(red(f"Error: Main data directory {main_data_dir} does not exist."))
        return False

    # Collect all files in main data
    main_files = {}
    for p in main_data_dir.glob("**/*"):
        if p.is_file():
            rel = p.relative_to(dp_path).as_posix()
            try:
                with open(p, "r", encoding="utf-8", errors="ignore") as f:
                    main_files[rel] = f.read()
            except Exception as e:
                pass

    print(f"\n{bold(cyan('═' * 70))}")
    print(f"{bold(cyan('   PHASE 3: OVERLAY FALLBACK & VERSION COMPATIBILITY VALIDATION'))}")
    print(f"{bold(cyan('═' * 70))}")
    print(f"• Datapack: {bold(str(dp_path))}")
    print(f"• Total files in main data/: {bold(str(len(main_files)))}")
    print(f"• Total overlays to inspect: {bold(str(len(overlays)))}\n")

    # Map overlay dirs to target versions
    dir_to_version = {
        "overlay_data_26_4": "26.4",
        "overlay_data_26_3": "26.3",
        "overlay_data_26_2": "26.2",
        "overlay_data_26_1": "26.1",
        "overlay_data_1_21_11": "1.21.11"
    }

    all_passed = True

    for entry in overlays:
        ov_dir_name = entry.get("directory")
        ov_dir = dp_path / ov_dir_name
        version = dir_to_version.get(ov_dir_name)
        if not version:
            # Infer from name
            parts = ov_dir_name.split("_")
            version = ".".join(parts[2:]) if len(parts) >= 3 else ov_dir_name

        print(f"┌─ {bold(ov_dir_name)} (Target: {cyan(version)})")
        if not ov_dir.exists():
            print(f"│  {yellow('⚠ Overlay directory does not exist on disk.')}")
            print(f"└{'─' * 50}\n")
            continue

        # Find files present in overlay
        ov_files = set()
        for p in ov_dir.glob("**/*"):
            if p.is_file():
                # Overlay files might be inside overlay_dir/data/... or overlay_dir/...
                rel_to_ov = p.relative_to(ov_dir).as_posix()
                if not rel_to_ov.startswith("data/"):
                    rel_to_ov = f"data/{rel_to_ov}"
                ov_files.add(rel_to_ov)

        # Fallback files: in main data but NOT in overlay
        fallback_files = [f for f in main_files if f not in ov_files]
        print(f"│  • Files in overlay: {bold(str(len(ov_files)))}")
        print(f"│  • Fallback files from main data/: {bold(str(len(fallback_files)))}")

        overlay_issues = []
        for fpath in fallback_files:
            content = main_files[fpath]
            issues = check_file_compatibility_for_version(fpath, content, version)
            if issues:
                overlay_issues.append((fpath, issues))

        if not overlay_issues:
            print(f"│  {green('✔ All fallback files are fully syntax-compatible with')} {cyan(version)}!")
        else:
            all_passed = False
            print(f"│  {red(f'✖ Found {len(overlay_issues)} fallback files with incompatible syntax for {version}:')}")
            for fpath, issues in overlay_issues[:15]:
                print(f"│     • {yellow(fpath)}")
                for issue in issues:
                    print(f"│         ↳ {red(issue)}")
            if len(overlay_issues) > 15:
                print(f"│     ... and {len(overlay_issues) - 15} more files.")
            print(f"│  {yellow(f'ACTION REQUIRED: Add valid {version} copies of these files to {ov_dir_name}/')}")

        print(f"└{'─' * 50}\n")

    if all_passed:
        print(f"{bold(green('✔ PHASE 3 VALIDATION PASSED: All overlays have valid fallback syntax!'))}\n")
    else:
        print(f"{bold(red('✖ PHASE 3 VALIDATION FAILED: Some overlays require compatible versions of main data files.'))}\n")

    return all_passed

if __name__ == "__main__":
    target = sys.argv[1] if len(sys.argv) > 1 else "."
    ok = run_phase3_validation(target)
    sys.exit(0 if ok else 1)
