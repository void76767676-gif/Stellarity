function stellarity:items/main_marker

# Exit Portal loop
# Used for stuff like respawn checks, etc.
execute if entity @s[tag=fe.exit_portal] run function far_end:structures/exit_portal/main

# Scheduled checks for End Portal animation
execute if entity @s[tag=stellarity.end_portal_animation,tag=stellarity.end_portal_animation.check_schedule] run function stellarity:sfx/end_portal_animation/checks/base

execute if entity @s[tag=stellarity.eol.spawn_animation] run function stellarity:mobs/eol/animations/spawn/loop

execute if entity @s[tag=stellarity.altar_of_accursed,tag=!stellarity.aota_activated] if entity @e[type=item,distance=..1] run function stellarity:mechanics/altar_crafting/notice

execute if entity @s[tag=stellarity.altar_of_the_light] unless block ~ ~-1 ~ minecraft:shroomlight run function stellarity:mechanics/altar_of_light/drop_self

execute if entity @s[tag=stellarity.end_portal] run function stellarity:sfx/end_portal_animation/marker_loop
execute if entity @s[tag=stellarity.end_portal_animation] run function stellarity:sfx/end_portal_animation/animation/main

execute if entity @s[tag=stellarity.altar_of_accursed,tag=stellarity.aota_activated] run function stellarity:sfx/altar_of_the_accursed/loop
execute if entity @s[tag=stellarity.altar_of_the_light] run function stellarity:sfx/altar_of_light/loop

execute if entity @s[tag=stellarity.dragons_den_chest] run function stellarity:sfx/dragons_den_chest


scoreboard players add @s stellarity.misc.loop.1s 1
execute if entity @s[scores={stellarity.misc.loop.1s=20}] run function stellarity:loops/marker_loop_1s

scoreboard players add @s stellarity.misc.loop.15s 1
execute if entity @s[scores={stellarity.misc.loop.1s=300}] run function stellarity:loops/marker_loop_15s

