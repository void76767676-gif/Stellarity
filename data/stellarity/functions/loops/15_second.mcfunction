# End Portal noises
execute as @e[type=marker,tag=stellarity.end_portal] at @s run function stellarity:visuals/end_portal_animation/ambient_sounds

schedule function stellarity:loops/15_second 15s
