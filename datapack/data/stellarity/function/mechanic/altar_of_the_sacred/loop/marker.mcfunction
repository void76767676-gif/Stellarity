execute positioned ~ ~-1 ~ as @n[type=item_display,distance=..0.01,tag=!stellarity.altar_of_the_sacred] run tag @s add stellarity.altar_of_the_sacred
execute positioned ~ ~-1 ~ as @n[type=item_display,distance=..0.01,tag=stellarity.altar_of_the_sacred] at @s run function stellarity:mechanic/altar_of_the_sacred/loop/item_display

execute unless score #empress_of_light.is_alive stellarity.misc matches 1 run function stellarity:mechanic/altar_of_the_sacred/visuals

execute unless score #empress_of_light.is_alive stellarity.misc matches 1 run scoreboard players add @s stellarity.mechanics.altar_of_the_sacred.timer 1
execute if score @s stellarity.mechanics.altar_of_the_sacred.timer matches 300 run function stellarity:mechanic/altar_of_the_sacred/ambient_sounds

# First approach sound and advancement check
execute as @a[distance=..6.0] if predicate stellarity:mechanic/near_altar at @s run function stellarity:mechanic/altar_common/on_first_approach

# Infinite orbit loop
function stellarity:mechanic/altar_common/orbit_loop

# Visual Actionbar indicator
execute unless entity @e[type=item,tag=stellarity.altar_of_the_sacred.ascending,distance=..6] if score @s stellarity.altar_items matches 0 as @a[distance=..5.5] run title @s actionbar [{"text":"✦ ","color":"#FFE259"},{"text":"Алтарь Освящения","color":"#FFF2A8","bold":true},{"text":" ✦","color":"#FFE259"},{"text":" • ","color":"#888888"},{"text":"Ожидание подношения","color":"#E0E0E0"}]
execute unless entity @e[type=item,tag=stellarity.altar_of_the_sacred.ascending,distance=..6] if score @s stellarity.altar_items matches 1.. as @a[distance=..5.5] run title @s actionbar [{"text":"✦ ","color":"#FFE259"},{"text":"Алтарь Освящения","color":"#FFF2A8","bold":true},{"text":" ✦","color":"#FFE259"},{"text":" [","color":"#888888"},{"score":{"name":"#altar_items","objective":"stellarity.misc"},"color":"#FFF7C2","bold":true},{"text":" предм.]","color":"#888888"},{"text":" • Священное благословение","color":"#70FFA0"}]
execute if entity @e[type=item,tag=stellarity.altar_of_the_sacred.ascending,distance=..6] as @a[distance=..12.0] run title @s actionbar [{"text":"✦ ","color":"#FFD700","bold":true},{"text":"ВОЗНЕСЕНИЕ: ПРИЗЫВ ИМПЕРАТРИЦЫ СВЕТА","color":"#FF77FF","bold":true},{"text":" ✦","color":"#FFD700","bold":true}]

execute as @e[type=item,tag=stellarity.altar_of_the_sacred.ascending,distance=..6] at @s run function stellarity:mechanic/altar_of_the_sacred/ascending_tick
