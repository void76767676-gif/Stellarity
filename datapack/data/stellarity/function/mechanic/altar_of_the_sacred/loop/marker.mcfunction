execute positioned ~ ~-1 ~ as @n[type=item_display,distance=..0.01,tag=!stellarity.altar_of_the_sacred] run tag @s add stellarity.altar_of_the_sacred
execute positioned ~ ~-1 ~ as @n[type=item_display,distance=..0.01,tag=stellarity.altar_of_the_sacred] at @s run function stellarity:mechanic/altar_of_the_sacred/loop/item_display

execute unless score #empress_of_light.is_alive stellarity.misc matches 1 run function stellarity:mechanic/altar_of_the_sacred/visuals

execute unless score #empress_of_light.is_alive stellarity.misc matches 1 run scoreboard players add @s stellarity.mechanics.altar_of_the_sacred.timer 1
execute if score @s stellarity.mechanics.altar_of_the_sacred.timer matches 300 run function stellarity:mechanic/altar_of_the_sacred/ambient_sounds

function stellarity:mechanic/altar_common/orbit_loop

execute as @e[type=item,tag=stellarity.altar_of_the_sacred.ascending,distance=..6] at @s run function stellarity:mechanic/altar_of_the_sacred/ascending_tick
