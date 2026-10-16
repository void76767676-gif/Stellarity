# Apply gradual regeneration and ambient effects

scoreboard players set @s stellarity.sit_timer 0

# Gradual health recovery
effect give @s minecraft:regeneration 2 0 true

# Soothing visual particles
particle minecraft:happy_villager ~ ~0.6 ~ 0.25 0.25 0.25 0.05 1 normal @a
particle minecraft:portal ~ ~0.2 ~ 0.2 0.1 0.2 0.03 2 normal @a

# Soft chime sound every 3 intervals (~3 seconds)
scoreboard players add @s stellarity.misc 1
execute if score @s stellarity.misc matches 3.. run playsound minecraft:block.amethyst_block.chime player @s ~ ~ ~ 0.35 1.5
execute if score @s stellarity.misc matches 3.. run scoreboard players set @s stellarity.misc 0
