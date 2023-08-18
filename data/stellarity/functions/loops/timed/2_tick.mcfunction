# Pixie sounds, particles, etc.
execute as @e[type=vex,tag=stellarity.pixie] at @s run function stellarity:mobs/pixie/loop

#execute as @e[type=!#stellarity:invalid_targets] at @s run function stellarity:loops/timed_entity/2t

execute as @e[type=!#stellarity:invalid_targets,scores={stellarity.items.spirit_dagger.attract_cooldown=1..}] at @s run function stellarity:items/spirit_dagger/entity_loop
execute as @e[type=!#stellarity:invalid_targets,scores={stellarity.items.dragonblade.cooldown=1..}] at @s run function stellarity:items/dragonblade/cooldown
execute as @e[type=!#stellarity:invalid_targets,scores={stellarity.items.dragonblade.stacks=1..}] at @s run function stellarity:items/dragonblade/entity_loop
execute as @e[type=!#stellarity:invalid_targets,tag=stellarity.items.tamaris.executable] at @s anchored eyes rotated ~ 0 run function stellarity:items/tamaris/execute/indicator


# Spirit Dagger
execute as @e[type=armor_stand,tag=stellarity.spirit_dagger.spirit] at @s anchored eyes positioned ^ ^ ^ run function stellarity:items/spirit_dagger/spirit/loop

# Starstruck Carcanet
execute as @e[type=area_effect_cloud,tag=stellarity.carcanet.aec] at @s run function stellarity:items/starstruck_carcanet/aec_loop

schedule function stellarity:loops/timed/2_tick 2t
