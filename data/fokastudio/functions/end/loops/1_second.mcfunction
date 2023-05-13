execute as @e[type=marker,tag=foka.altar_of_accursed,tag=foka.aota_activated] at @s run function fokastudio:end/mechanics/altar_crafting/main

execute as @e[type=item,predicate=fokastudio:end/locations/biomes/in_the_hallow] at @s if block ~ ~ ~ water run function fokastudio:end/mechanics/consecration/main

execute in minecraft:overworld as @e[type=phantom,tag=!foka.phantom.aware,distance=0..] at @s run function fokastudio:end/mobs/phantom/enlarge 
execute as @e[type=phantom] unless score @s foka.phantom.size matches 1.. run scoreboard players set @s foka.phantom.size 1

execute as @e[type=marker,tag=foka.book_of_light.aura] at @s as @a[distance=..5.5] run function fokastudio:end/items/spellbooks/light/effects

# Villagers
execute as @e[type=villager,tag=foka.villager.aware,predicate=!fokastudio:end/utils/is_baby,tag=!foka.villager.nitwit,tag=!foka.villager.has_job] at @s run function fokastudio:end/mobs/villager/main

schedule function fokastudio:end/loops/1_second 1s
