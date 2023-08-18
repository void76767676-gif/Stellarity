execute if entity @s[predicate=stellarity:items/holding_aery_sword] run function stellarity:items/frigid_harvester/particles/main

execute if entity @s[predicate=stellarity:items/holding_tamaris] as @e[type=!#stellarity:invalid_targets,distance=0.1..20] run function stellarity:items/tamaris/execute/calculate_percentage

execute if entity @s[predicate=stellarity:items/cursed_tome/holding_any] run function stellarity:items/cursed_tome/loop

scoreboard players reset @s stellarity.misc.loop.5t
