execute as @e[type=!#stellarity:invalid_targets,scores={stellarity.items.spirit_dagger.attract_cooldown=1..}] at @s run function stellarity:items/spirit_dagger/entity_loop
execute as @e[type=!#stellarity:invalid_targets,scores={stellarity.items.dragonblade.cooldown=1..}] at @s run function stellarity:items/dragonblade/cooldown
execute as @e[type=!#stellarity:invalid_targets,scores={stellarity.items.dragonblade.stacks=1..}] at @s run function stellarity:items/dragonblade/entity_loop
execute as @e[type=!#stellarity:invalid_targets,scores={stellarity.items.spellbook.natures_wrath.homing_time=1..}] at @s run function stellarity:items/spellbooks/natures_wrath/spirit/homing/tick_down

# Starstruck Carcanet
execute as @e[type=area_effect_cloud,tag=stellarity.carcanet.aec] at @s run function stellarity:items/starstruck_carcanet/aec_loop

schedule function stellarity:loops/timed/3_tick 3t
