scoreboard players add #times foka.misc 1

execute if score #times foka.misc matches 1 run tp @s ^ ^0.2 ^ ~ ~ 
tp @s ^ ^ ^0.04 ~ ~

execute if score #times foka.misc < #knockback foka.misc at @s run function fokastudio:end/items/spirit_dagger/effects/knockback/get_distance
