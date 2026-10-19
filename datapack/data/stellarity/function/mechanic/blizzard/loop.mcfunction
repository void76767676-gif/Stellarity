scoreboard players add @s stellarity.blizzard.sound_loop 3
execute if score @s stellarity.blizzard.sound_loop matches ..3 run playsound stellarity:ambient.blizzard.wind ambient @s ~ ~ ~ 1.0 1.0
execute if score @s stellarity.blizzard.sound_loop matches ..3 run posteffect add @s stellarity:blizzard
execute if score @s stellarity.blizzard.sound_loop matches 98.. run scoreboard players set @s stellarity.blizzard.sound_loop 0
