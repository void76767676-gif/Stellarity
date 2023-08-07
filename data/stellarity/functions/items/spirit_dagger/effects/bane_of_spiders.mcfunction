$execute store result score #duration stellarity.misc run random value 20..$(bane)

effect give @s minecraft:slowness 1 3 false
execute store result entity @s ActiveEffects[{Id:2,Amplifier:3b}].Duration int 1 run scoreboard players get #duration stellarity.misc
