data remove storage fokastudio:end/temp "natures_wrath.spells"
data modify storage fokastudio:end/temp "natures_wrath.spells" append value "normal"

execute if entity @p[advancements={fokastudio:end/events/items/natures_wrath/been_to_forest=true}] run data modify storage fokastudio:end/temp "natures_wrath.spells" append value "forest"
execute if entity @p[advancements={fokastudio:end/events/items/natures_wrath/been_to_nether=true}] run data modify storage fokastudio:end/temp "natures_wrath.spells" append value "fire"
execute if entity @p[advancements={fokastudio:end/events/items/natures_wrath/been_to_ocean=true}] run data modify storage fokastudio:end/temp "natures_wrath.spells" append value "ocean"
execute if entity @p[advancements={fokastudio:end/events/items/natures_wrath/been_to_mountains=true}] run data modify storage fokastudio:end/temp "natures_wrath.spells" append value "mountains"
execute if entity @p[advancements={fokastudio:end/events/items/natures_wrath/been_to_jungle=true}] run data modify storage fokastudio:end/temp "natures_wrath.spells" append value "jungle"
execute if entity @p[advancements={fokastudio:end/events/items/natures_wrath/been_to_snow=true}] run data modify storage fokastudio:end/temp "natures_wrath.spells" append value "snow"

execute store result score #length foka.misc run data get storage fokastudio:end/temp "natures_wrath.spells"

scoreboard players set in foka.misc 1
scoreboard players operation in1 foka.misc = #length foka.misc
scoreboard players reset out foka.misc
execute unless score #length foka.misc matches 1 run function fokastudio:end/utils/rng/range

execute if score #length foka.misc matches 1 run data modify storage fokastudio:end/temp "natures_wrath.chosen" set value "normal"
execute if score out foka.misc matches 1 run data modify storage fokastudio:end/temp "natures_wrath.chosen" set from storage fokastudio:end/temp "natures_wrath.spells"[0]
execute if score out foka.misc matches 2 run data modify storage fokastudio:end/temp "natures_wrath.chosen" set from storage fokastudio:end/temp "natures_wrath.spells"[1] 
execute if score out foka.misc matches 3 run data modify storage fokastudio:end/temp "natures_wrath.chosen" set from storage fokastudio:end/temp "natures_wrath.spells"[2] 
execute if score out foka.misc matches 4 run data modify storage fokastudio:end/temp "natures_wrath.chosen" set from storage fokastudio:end/temp "natures_wrath.spells"[3] 
execute if score out foka.misc matches 5 run data modify storage fokastudio:end/temp "natures_wrath.chosen" set from storage fokastudio:end/temp "natures_wrath.spells"[4] 
execute if score out foka.misc matches 6 run data modify storage fokastudio:end/temp "natures_wrath.chosen" set from storage fokastudio:end/temp "natures_wrath.spells"[5] 
execute if score out foka.misc matches 7 run data modify storage fokastudio:end/temp "natures_wrath.chosen" set from storage fokastudio:end/temp "natures_wrath.spells"[6] 

execute if data storage fokastudio:end/temp {natures_wrath.chosen:"normal"} run tag @s add foka.natures_wrath.spirit.normal
execute if data storage fokastudio:end/temp {natures_wrath.chosen:"forest"} run tag @s add foka.natures_wrath.spirit.forest
execute if data storage fokastudio:end/temp {natures_wrath.chosen:"fire"} run tag @s add foka.natures_wrath.spirit.fire
execute if data storage fokastudio:end/temp {natures_wrath.chosen:"ocean"} run tag @s add foka.natures_wrath.spirit.ocean
execute if data storage fokastudio:end/temp {natures_wrath.chosen:"mountains"} run tag @s add foka.natures_wrath.spirit.mountains
execute if data storage fokastudio:end/temp {natures_wrath.chosen:"jungle"} run tag @s add foka.natures_wrath.spirit.jungle
execute if data storage fokastudio:end/temp {natures_wrath.chosen:"snow"} run tag @s add foka.natures_wrath.spirit.snow
