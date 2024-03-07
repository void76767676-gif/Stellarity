scoreboard players add @s stellarity.misc 1

execute as @e[type=!#kohara:invalid_targets,limit=1,sort=nearest,nbt={HurtTime:0s},distance=..1.5] at @s run function stellarity:items/call_of_the_void/shrapnel/damage

tp @s ^ ^ ^1 ~ ~
execute if score @s stellarity.misc matches 1 run particle minecraft:electric_spark ~ ~ ~ ^ ^ ^1000000 0.0000037 0

execute unless block ~ ~ ~ #kohara:non_solid run kill @s
#execute if score @s stellarity.misc matches 3.. run particle minecraft:dragon_breath ~ ~ ~

execute if score @s stellarity.misc matches 3.. run kill @s

