scoreboard players add @s stellarity.blizzard.sound_loop 3
execute if score @s stellarity.blizzard.sound_loop matches ..3 run playsound stellarity:ambient.blizzard.wind ambient @s
execute if score @s stellarity.blizzard.sound_loop matches ..3 run posteffect add @s stellarity:blizzard
execute if score @s stellarity.blizzard.sound_loop matches 99.. run scoreboard players set @s stellarity.blizzard.sound_loop 0
execute at @s run particle stellarity:blizzard_flake ~ ~2 ~ 10 4 10 0.4 35 force @s
execute at @s run particle stellarity:blizzard_wind ~ ~1.5 ~ 8 3 8 0.7 8 force @s
execute at @s run particle stellarity:blizzard_gust ~ ~1.5 ~ 7 2 7 0.7 6 force @s
execute at @s run particle stellarity:blizzard_mote ~ ~2 ~ 10 4 10 0.35 25 force @s
execute at @s run particle stellarity:blizzard_fog ~ ~1 ~ 8 2 8 0.05 4 force @s
execute at @s run particle minecraft:snowflake ~ ~2 ~ 10 3 10 0.25 20 force @s
execute at @s run particle stellarity:snow_tumble ~ ~0.5 ~ 6 0.3 6 0.2 1 force @s
execute at @s run particle stellarity:ice_tumble ~ ~0.5 ~ 6 0.3 6 0.2 1 force @s
