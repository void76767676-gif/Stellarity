scoreboard players add @s stellarity.misc 1

particle electric_spark ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]
execute as @e[type=!#kohara:invalid_targets,limit=1,sort=nearest,nbt={HurtTime:0s},distance=..1.5] at @s run function stellarity:items/call_of_the_void/shrapnel/damage

tp @s ^ ^ ^0.75 ~ ~6.5

execute unless block ~ ~ ~ #kohara:non_solid run kill @s
execute if score @s stellarity.misc matches 4.. run kill @s
