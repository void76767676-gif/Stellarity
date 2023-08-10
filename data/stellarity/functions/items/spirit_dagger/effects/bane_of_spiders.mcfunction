$execute store result score #duration stellarity.misc run random value 20..$(bane)

effect give @s minecraft:slowness 1 3 false
execute store result entity @s active_effects[{id:"minecraft:slowness",amplifier:3b}].Duration int 1 run scoreboard players get #duration stellarity.misc
