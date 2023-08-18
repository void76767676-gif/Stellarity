execute as @e[type=item,predicate=stellarity:locations/biomes/in_the_hallow] at @s if block ~ ~ ~ water run function stellarity:mechanics/consecration/main

execute in minecraft:overworld as @e[type=phantom,tag=!stellarity.phantom.aware,distance=0..,nbt={Size:0}] at @s run function stellarity:mobs/phantom/enlarge 
execute as @e[type=phantom] unless score @s stellarity.phantom.size matches 1.. run function stellarity:mobs/phantom/score

# Villagers
execute as @e[type=villager,tag=stellarity.villager.aware,predicate=!stellarity:utils/is_baby,tag=!stellarity.villager.nitwit,tag=!stellarity.villager.has_job] at @s run function stellarity:mobs/villager/main

execute if score #stellarity.dragon.ash_duration stellarity.misc matches 1.. run scoreboard players remove #stellarity.dragon.ash_duration stellarity.misc 1

schedule function stellarity:loops/timed/1_second 1s
