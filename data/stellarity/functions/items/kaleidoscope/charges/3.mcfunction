playsound stellarity:item.kaleidoscope.level_3 player @a ~ ~ ~ 1 1

playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 0.8
playsound minecraft:item.firecharge.use player @a ~ ~ ~ 1 0.6

particle end_rod ^ ^ ^ 0 0 0 0.3 68
particle flame ^ ^ ^ 0 0 0 0.3 68
particle explosion ^ ^ ^
particle flash ^ ^ ^

execute unless entity @s[type=player,predicate=stellarity:items/holding_kaleidoscope] run function stellarity:items/kaleidoscope/charges/damage/3
execute as @e[type=!#stellarity:invalid_targets,predicate=!stellarity:items/holding_kaleidoscope,distance=0.1..4] run function stellarity:items/kaleidoscope/charges/splash/3
