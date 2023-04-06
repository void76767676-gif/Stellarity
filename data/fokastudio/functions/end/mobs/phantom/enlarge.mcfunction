# 1 real life hour = 72k MC ticks
scoreboard players set #hour foka.misc 72000
scoreboard players set #half_hour foka.misc 36000

# Transform time since last rest from ticks to hours
scoreboard players operation #last_rest foka.misc = @p foka.misc.time_since_rest
scoreboard players operation #last_rest foka.misc -= #hour foka.misc 
execute if score #last_rest foka.misc matches ..0 run scoreboard players set #last_rest foka.misc 0

# Increases the size by one for every extra hour without resting
scoreboard players operation #last_rest foka.misc /= #hour foka.misc
scoreboard players operation #size foka.misc = #last_rest foka.misc
execute if score #size foka.misc matches 12.. run scoreboard players set #size foka.misc 12
execute store result entity @s Size byte 1 run scoreboard players get #last_rest foka.misc

# Get the outcome Phantom size and store it in the entity's score
scoreboard players set #1 foka.misc 1
scoreboard players operation @s foka.phantom.size = #size foka.misc

scoreboard players operation #mul foka.misc = @s foka.phantom.size
scoreboard players set #4 foka.misc 4
scoreboard players set #hp foka.misc 20

scoreboard players operation #mul foka.misc *= #4 foka.misc
scoreboard players operation #hp foka.misc += #mul foka.misc

# Modify HP
# 20 + 4 * size
execute store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base float 1 run scoreboard players get #hp foka.misc

# Heal missing HP
scoreboard players set #heal foka.misc 20
scoreboard players operation #heal foka.misc += #hp foka.misc
execute store result entity @s Health float 1 run scoreboard players get #heal foka.misc

# Modify Armor
# Equal to size
scoreboard players operation #armor foka.misc = #last_rest foka.misc
execute if score #armor foka.misc matches 10.. run scoreboard players set #armor foka.misc 10
execute store result entity @s Attributes[{Name:"minecraft:generic.armor"}].Base float 1 run scoreboard players get @s foka.phantom.size

tag @s add foka.phantom.aware

scoreboard players operation #size foka.misc += #1 foka.misc
scoreboard players operation @s foka.phantom.size = #size foka.misc
