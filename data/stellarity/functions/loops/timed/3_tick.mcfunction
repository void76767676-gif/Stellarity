execute as @e[type=!#kohara:invalid_targets,tag=stellarity.cooldown_tickdown] at @s run function stellarity:items/entity_cooldowns

# Starstruck Carcanet
execute as @e[type=area_effect_cloud,tag=stellarity.carcanet.aec] at @s run function stellarity:items/starstruck_carcanet/aec_loop

schedule function stellarity:loops/timed/3_tick 3t
