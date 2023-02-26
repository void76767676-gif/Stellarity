execute as @e[type=marker,tag=foka.altar_of_accursed,tag=foka.aota_activated] at @s run function fokastudio:end/mechanics/altar_crafting/main

execute as @e[type=item,predicate=fokastudio:end/locations/biomes/in_the_hallow] at @s if block ~ ~ ~ water run function fokastudio:end/mechanics/consecration/main

execute in minecraft:overworld as @e[type=phantom,tag=!foka.phantom.aware,distance=0..] at @s run function fokastudio:end/mobs/phantom/enlarge 
execute as @e[type=phantom] unless score @s foka.phantom.size matches 1.. run scoreboard players set @s foka.phantom.size 1


schedule function fokastudio:end/loops/1_second 1s
