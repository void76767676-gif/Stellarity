tag @s remove foka.zephyr.killed_entity

execute store result score #duration foka.misc run data get entity @s ActiveEffects.[{Id:1,Amplifier:0b}].Duration 1

scoreboard players set #25seconds foka.misc 500
scoreboard players set #17seconds foka.misc 340
scoreboard players set #12seconds foka.misc 240
scoreboard players set #8seconds foka.misc 160
scoreboard players set #5seconds foka.misc 100
scoreboard players set #3seconds foka.misc 60

execute if score #duration foka.misc matches 2751..3300 run scoreboard players operation #duration foka.misc += #3seconds foka.misc
execute if score #duration foka.misc matches 2201..2750 run scoreboard players operation #duration foka.misc += #5seconds foka.misc
execute if score #duration foka.misc matches 1651..2200 run scoreboard players operation #duration foka.misc += #8seconds foka.misc
execute if score #duration foka.misc matches 1101..1650 run scoreboard players operation #duration foka.misc += #12seconds foka.misc
execute if score #duration foka.misc matches 551..1100 run scoreboard players operation #duration foka.misc += #17seconds foka.misc
execute if score #duration foka.misc matches ..550 run scoreboard players operation #duration foka.misc += #25seconds foka.misc

execute if score #duration foka.misc matches 3301.. run scoreboard players set #duration foka.misc 3300

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["foka.items.zephyr"],Effects:[{Id:1,Amplifier:0,Duration:1}],Duration:2,ReapplicationDelay:0,WaitTime:-1, Age:-1}
execute store result entity @e[type=area_effect_cloud,limit=1,sort=nearest,tag=foka.items.zephyr] Effects[{Id:1}].Duration int 1 run scoreboard players get #duration foka.misc
