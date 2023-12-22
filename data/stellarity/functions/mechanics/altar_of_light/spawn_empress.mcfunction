execute store result score #count stellarity.misc run data get entity @s Item.Count 1

scoreboard players set #1 stellarity.misc 1
scoreboard players operation #count stellarity.misc -= #1 stellarity.misc

execute store result entity @s Item.Count byte 1 run scoreboard players get #count stellarity.misc

particle explosion ~ ~ ~ 0 0 0 1 0 force
particle smoke ~ ~ ~ 0 0 0 0.06 14 force

playsound minecraft:entity.wither.shoot block @a[distance=0..] ~ ~ ~ 1 1
playsound minecraft:entity.zombie.infect block @a[distance=0..] ~ ~ ~ 1 1
playsound minecraft:entity.zombie.infect block @a[distance=0..] ~ ~ ~ 1 0

execute at @e[type=marker,limit=1,sort=nearest,tag=stellarity.altar_of_the_light] positioned ~ ~3 ~ run function stellarity:mobs/eol/summon
