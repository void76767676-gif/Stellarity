# Add extra damage
scoreboard players operation #damage foka.misc += #damage_extra foka.misc

# Rounding
scoreboard players operation #temp foka.misc = #damage foka.misc
scoreboard players operation #temp foka.misc /= #100 foka.misc

scoreboard players operation #temp foka.misc *= #100 foka.misc
scoreboard players operation #temp2 foka.misc = #damage foka.misc

scoreboard players operation #temp2 foka.misc -= #temp foka.misc

execute if score #temp2 foka.misc matches 0..9 run data modify storage fokastudio:end/temp aery_sword.damage_round set value ""
execute if score #temp2 foka.misc matches 10..19 run data modify storage fokastudio:end/temp aery_sword.damage_round set value ".1"
execute if score #temp2 foka.misc matches 20..29 run data modify storage fokastudio:end/temp aery_sword.damage_round set value ".2"
execute if score #temp2 foka.misc matches 30..39 run data modify storage fokastudio:end/temp aery_sword.damage_round set value ".3"
execute if score #temp2 foka.misc matches 40..49 run data modify storage fokastudio:end/temp aery_sword.damage_round set value ".4"
execute if score #temp2 foka.misc matches 50..59 run data modify storage fokastudio:end/temp aery_sword.damage_round set value ".5"
execute if score #temp2 foka.misc matches 60..69 run data modify storage fokastudio:end/temp aery_sword.damage_round set value ".6"
execute if score #temp2 foka.misc matches 70..79 run data modify storage fokastudio:end/temp aery_sword.damage_round set value ".7"
execute if score #temp2 foka.misc matches 80..89 run data modify storage fokastudio:end/temp aery_sword.damage_round set value ".8"
execute if score #temp2 foka.misc matches 90..99 run data modify storage fokastudio:end/temp aery_sword.damage_round set value ".9"

# Custom model data depending on extra damage
execute if score #damage foka.misc matches 0..399 run data modify storage fokastudio:end/temp aery_sword.cmd set value 90001
execute if score #damage foka.misc matches 400..799 run data modify storage fokastudio:end/temp aery_sword.cmd set value 90002
execute if score #damage foka.misc matches 800..1199 run data modify storage fokastudio:end/temp aery_sword.cmd set value 90003
execute if score #damage foka.misc matches 1200.. run data modify storage fokastudio:end/temp aery_sword.cmd set value 90004

# Visual and sound effects
execute anchored eyes positioned ^ ^ ^2.5 run function fokastudio:end/items/frigid_harvester/effects
particle minecraft:enchant ~ ~1.5 ~ 0 0 0 2 25 force @s
particle minecraft:block ice ~ ~1 ~ 0 0 0 3 15 force @a[distance=..32]
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.8 0.8
playsound minecraft:block.glass.break player @s ~ ~ ~ 1 0.66

execute store result storage fokastudio:end/temp aery_sword.damage_int int 0.01 run scoreboard players get #damage foka.misc
execute store result storage fokastudio:end/temp aery_sword.damage double 0.01 run scoreboard players get #damage foka.misc
item modify entity @s weapon.mainhand fokastudio:end/aery_sword_increase_damage
