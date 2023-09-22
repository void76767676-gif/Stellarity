scoreboard players operation @s stellarity.items.sabrewing.charge = @p[predicate=stellarity:items/holding_sabrewing] stellarity.items.sabrewing.charge

execute if score @s stellarity.items.sabrewing.charge matches 45..84 run tag @s add stellarity.items.sabrewing.1
execute if score @s stellarity.items.sabrewing.charge matches 85..124 run tag @s add stellarity.items.sabrewing.2
execute if score @s stellarity.items.sabrewing.charge matches 125.. run tag @s add stellarity.items.sabrewing.3

execute if entity @s[tag=stellarity.items.sabrewing.1] run data modify storage stellarity:temp sabrewing.multiplier set value 12
execute if entity @s[tag=stellarity.items.sabrewing.2] run data modify storage stellarity:temp sabrewing.multiplier set value 15
execute if entity @s[tag=stellarity.items.sabrewing.3] run data modify storage stellarity:temp sabrewing.multiplier set value 19

execute if entity @s[tag=stellarity.items.sabrewing.1] run \
	tag @e[type=marker,limit=1,sort=nearest,tag=stellarity.items.sabrewing.marker] add stellarity.items.sabrewing.1
execute if entity @s[tag=stellarity.items.sabrewing.2] run \
	tag @e[type=marker,limit=1,sort=nearest,tag=stellarity.items.sabrewing.marker] add stellarity.items.sabrewing.2
execute if entity @s[tag=stellarity.items.sabrewing.3] run \
	tag @e[type=marker,limit=1,sort=nearest,tag=stellarity.items.sabrewing.marker] add stellarity.items.sabrewing.3

tag @s add stellarity.items.sabrewing.arrow

data modify entity @s pickup set value 2b
