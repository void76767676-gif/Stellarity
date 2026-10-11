# Final cleanup of exit portal on the main island

# Kill any existing exit portal marker so custom portal can be placed cleanly
execute in minecraft:the_end positioned 0.5 61 0.5 run kill @e[type=minecraft:marker,tag=stellarity.exit_portal,distance=..2]

# Force place custom exit portal by summoning end crystal at 0.5 61 0.5
execute in minecraft:the_end positioned 0.5 61 0.5 run summon minecraft:end_crystal 0.5 61 0.5

# Remove vanilla bedrock, dragon egg, and torches 2 blocks above deactivated structure (Y 65-68)
execute in minecraft:the_end run fill -2 65 -2 2 68 2 air replace minecraft:bedrock
execute in minecraft:the_end run fill -2 65 -2 2 68 2 air replace minecraft:dragon_egg
execute in minecraft:the_end run fill -2 65 -2 2 68 2 air replace minecraft:torch
