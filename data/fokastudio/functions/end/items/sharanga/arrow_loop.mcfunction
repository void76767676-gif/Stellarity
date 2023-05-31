# No particles in first frame for the sake of visibility
execute if score @s foka.items.sharanga.arrow_age matches 1.. run particle minecraft:dust 1.0 0.9 0.4 1.33 ~ ~ ~ 0.12 0.12 0.12 0 8 force

scoreboard players add @s foka.items.sharanga.arrow_age 1

execute if score @s foka.items.sharanga.arrow_age matches 1 run playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 0.88 0.8

execute if data entity @s inBlockState run function fokastudio:end/items/sharanga/arrow_explode
execute if score @s foka.items.sharanga.arrow_age matches 21.. run function fokastudio:end/items/sharanga/arrow_explode

execute unless entity @s[tag=foka.items.sharanga.buffed_velocity] run function fokastudio:end/items/sharanga/velocity
