execute as @e[type=marker,tag=foka.altar_of_accursed,tag=foka.aota_activated] at @s run function fokastudio:end/mechanics/altar_crafting/main

execute as @e[type=item,predicate=fokastudio:end/locations/biomes/in_the_hallow] at @s if block ~ ~ ~ water run function fokastudio:end/mechanics/consecration/main

schedule function fokastudio:end/loops/1_second 1s
