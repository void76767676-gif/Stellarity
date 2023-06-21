playsound stellarity:item.kaleidoscope.level_2 player @a ~ ~ ~ 1 1

playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 0.9
playsound minecraft:item.firecharge.use player @a ~ ~ ~ 1 0.9

particle end_rod ^ ^ ^ 0 0 0 0.15 35
particle flame ^ ^ ^ 0 0 0 0.15 35
particle explosion ^ ^ ^

execute unless entity @s[type=player,predicate=stellarity:items/holding_kaleidoscope] run function stellarity:items/kaleidoscope/charges/damage/2
execute as @e[type=!#stellarity:invalid_targets,predicate=!stellarity:items/holding_kaleidoscope,distance=0.1..2.5] run function stellarity:items/kaleidoscope/charges/splash/2
