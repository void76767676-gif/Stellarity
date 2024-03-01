scoreboard players add #shrapnel_count stellarity.misc 1

summon marker ~ ~0.1 ~ {Tags:["stellarity.marker","stellarity.shrapnel"]}
execute as @e[type=marker,tag=!stellarity.rotated,limit=1,sort=nearest] run function stellarity:items/call_of_the_void/shrapnel/rotate

execute if score #shrapnel_count stellarity.misc matches 1 run particle end_rod ~ ~0.1 ~ 0 0 0 0.05 15 force @a[distance=..128]

execute unless score #shrapnel_count stellarity.misc matches 7.. run function stellarity:items/call_of_the_void/shrapnel/spawn
execute if score #shrapnel_count stellarity.misc matches 7.. run scoreboard players reset #shrapnel_count stellarity.misc

kill @s[type=#arrows]
