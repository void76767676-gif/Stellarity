scoreboard players set #30 foka.misc 40

scoreboard players operation #flame_time foka.misc = #fire_aspect foka.misc
scoreboard players operation #flame_time foka.misc *= #30 foka.misc

execute store result entity @s Fire short 1 run scoreboard players get #flame_time foka.misc
