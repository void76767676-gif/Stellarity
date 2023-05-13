tag @s add foka.villager.has_job

data modify storage fokastudio:end/temp villager_type set from entity @s VillagerData.profession
data remove storage fokastudio:end/temp villager_trades

execute if data storage fokastudio:end/temp {villager_type:"minecraft:armorer"} run function fokastudio:end/mobs/villager/trades/armorer
execute if data storage fokastudio:end/temp {villager_type:"minecraft:butcher"} run function fokastudio:end/mobs/villager/trades/butcher
execute if data storage fokastudio:end/temp {villager_type:"minecraft:cartographer"} run function fokastudio:end/mobs/villager/trades/cartographer
execute if data storage fokastudio:end/temp {villager_type:"minecraft:cleric"} run function fokastudio:end/mobs/villager/trades/cleric
execute if data storage fokastudio:end/temp {villager_type:"minecraft:farmer"} run function fokastudio:end/mobs/villager/trades/farmer
execute if data storage fokastudio:end/temp {villager_type:"minecraft:fisherman"} run function fokastudio:end/mobs/villager/trades/fisherman
execute if data storage fokastudio:end/temp {villager_type:"minecraft:fletcher"} run function fokastudio:end/mobs/villager/trades/fletcher
execute if data storage fokastudio:end/temp {villager_type:"minecraft:leatherworker"} run function fokastudio:end/mobs/villager/trades/leatherworker
execute if data storage fokastudio:end/temp {villager_type:"minecraft:librarian"} run function fokastudio:end/mobs/villager/trades/librarian
execute if data storage fokastudio:end/temp {villager_type:"minecraft:mason"} run function fokastudio:end/mobs/villager/trades/mason
execute if data storage fokastudio:end/temp {villager_type:"minecraft:shepherd"} run function fokastudio:end/mobs/villager/trades/shepherd
execute if data storage fokastudio:end/temp {villager_type:"minecraft:toolsmith"} run function fokastudio:end/mobs/villager/trades/toolsmith
execute if data storage fokastudio:end/temp {villager_type:"minecraft:weaponsmith"} run function fokastudio:end/mobs/villager/trades/weaponsmith

data modify entity @s VillagerData.level set value 5
data modify entity @s Offers.Recipes set from storage fokastudio:end/temp villager_trades

particle minecraft:happy_villager ~ ~.5 ~ 0.5 .75 0.5 0 8
particle minecraft:dragon_breath ~ ~.5 ~ 0.5 .75 0.5 0 8
