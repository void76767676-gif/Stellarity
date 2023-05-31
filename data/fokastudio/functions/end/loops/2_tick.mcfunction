# Pixie sounds, particles, etc.
execute as @e[type=vex,tag=foka.pixie] at @s run function fokastudio:end/mobs/pixie/loop

execute as @a[predicate=fokastudio:end/items/wearing_full_ancient_armor,predicate=fokastudio:end/utils/player/is_running,predicate=!fokastudio:end/utils/player/is_swimming] at @s rotated as @s rotated ~ 0 positioned ^ ^ ^-.33 run function fokastudio:end/items/armors/ancient_armor/visuals
execute as @a[tag=foka.holy_protection] at @s rotated as @s rotated ~ 0 positioned ^ ^ ^-.33 run function fokastudio:end/items/armors/hallowed_armor/visuals

## Item loops
# Spirit Dagger
execute as @e[type=!#fokastudio:end/invalid_targets,scores={foka.items.spirit_dagger.attract_cooldown=1..}] at @s run function fokastudio:end/items/spirit_dagger/entity_loop
execute as @e[type=armor_stand,tag=foka.spirit_dagger.spirit] at @s anchored eyes positioned ^ ^ ^ run function fokastudio:end/items/spirit_dagger/spirit/loop
execute as @a[scores={foka.items.spirit_dagger.effects_duration=1..}] run function fokastudio:end/items/spirit_dagger/effects/reset/tick
# Dragonblade
execute as @e[type=!#fokastudio:end/invalid_targets,scores={foka.items.dragonblade.cooldown=1..}] at @s run function fokastudio:end/items/dragonblade/cooldown
execute as @e[type=!#fokastudio:end/invalid_targets,scores={foka.items.dragonblade.stacks=1..}] at @s run function fokastudio:end/items/dragonblade/entity_loop
# Starstruck Carcanet
execute as @e[type=area_effect_cloud,tag=foka.carcanet.aec] at @s run function fokastudio:end/items/starstruck_carcanet/aec_loop
# Prismatic Pearl
execute as @a[scores={foka.items.prismatic_pearl.cooldown=1..}] run function fokastudio:end/items/prismatic_pearl/cooldown/countdown
# Tamaris
execute as @e[type=!#fokastudio:end/invalid_targets,tag=foka.items.tamaris.executable] at @s anchored eyes rotated ~ 0 positioned ^ ^1.5 ^ run function fokastudio:end/items/tamaris/execute/indicator
execute as @e[type=!#fokastudio:end/invalid_targets,scores={foka.items.tamaris.execute_cooldown=1..}] run function fokastudio:end/items/tamaris/execute/cooldown_countdown
# Spellbooks
execute as @a[scores={foka.items.spellbook.conveyance.cooldown=1..}] run function fokastudio:end/items/spellbooks/conveyance/cooldown_countdown
execute as @a[scores={foka.items.spellbook.updraft.cooldown=1..}] run function fokastudio:end/items/spellbooks/updraft/cooldown_countdown
execute as @a[scores={foka.items.spellbook.light.cooldown=1..}] run function fokastudio:end/items/spellbooks/light/cooldown_countdown
execute as @a[scores={foka.items.spellbook.natures_wrath.cooldown.shoot=1..}] run function fokastudio:end/items/spellbooks/natures_wrath/cooldown_countdown/shoot
execute as @a[scores={foka.items.spellbook.natures_wrath.cooldown.wolves=1..}] run function fokastudio:end/items/spellbooks/natures_wrath/cooldown_countdown/wolves

schedule function fokastudio:end/loops/2_tick 2t
