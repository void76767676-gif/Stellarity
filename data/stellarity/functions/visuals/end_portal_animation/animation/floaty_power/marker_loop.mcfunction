particle minecraft:dust 1 1 1 2 ~ ~ ~ 0 0 0 1 0
execute if predicate stellarity:utils/chance/25percent run particle minecraft:dust 0.486 0.25 0.678 2 ~ ~ ~ 0 0 0 1 0

execute facing entity @e[type=marker,tag=stellarity.end_portal_animation] eyes run tp @s ~ ~ ~ ~ ~ 

tp @s ^ ^ ^0.33

execute as @e[type=marker,tag=stellarity.end_portal_animation,distance=..0.5] at @s run function stellarity:visuals/end_portal_animation/animation/floaty_power/add
