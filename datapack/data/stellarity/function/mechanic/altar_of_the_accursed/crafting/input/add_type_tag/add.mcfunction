data modify storage stellarity:temp altar_of_the_accursed.item set from entity @s Item

scoreboard players set #is_stellarity stellarity.misc 0
execute if data storage stellarity:temp altar_of_the_accursed.item.components."minecraft:custom_data"."stellarity:item" run \
scoreboard players set #is_stellarity stellarity.misc 1

execute if score #is_stellarity stellarity.misc matches 0 run function stellarity:mechanic/altar_of_the_accursed/crafting/input/add_type_tag/if_not_stellarity_item
execute if score #is_stellarity stellarity.misc matches 1 run function stellarity:mechanic/altar_of_the_accursed/crafting/input/add_type_tag/if_stellarity_item

execute store result score @s stellarity.altar_of_the_accursed.count run data get storage stellarity:temp altar_of_the_accursed.item.count

function stellarity:mechanic/altar_of_the_accursed/crafting/input/add_type_tag/macro with storage stellarity:temp altar_of_the_accursed.macro

tag @s add stellarity.altar_of_the_accursed.checked_type

# Universal tagging for all Elytra variations (vanilla and Stellarity custom wings)
execute if items entity @s contents minecraft:elytra run tag @s add stellarity.altar_of_the_accursed.minecraft.elytra
execute if data entity @s {Item:{id:"minecraft:elytra"}} run tag @s add stellarity.altar_of_the_accursed.minecraft.elytra

# Tag trim templates and materials
execute if items entity @s contents #minecraft:trim_templates run tag @s add stellarity.altar.trim_template
execute if items entity @s contents #minecraft:trim_materials run tag @s add stellarity.altar.trim_material
execute if entity @s[tag=stellarity.altar_of_the_accursed.stellarity.chorus_plating] run tag @s add stellarity.altar.trim_material
execute if entity @s[tag=stellarity.altar_of_the_accursed.stellarity.enderite_shard] run tag @s add stellarity.altar.trim_material
execute if entity @s[tag=stellarity.altar_of_the_accursed.stellarity.enderite_ingot] run tag @s add stellarity.altar.trim_material

particle minecraft:witch ~ ~.5 ~ 0 0 0 10 6 normal
particle minecraft:smoke ~ ~.5 ~ 0 0 0 0.02 6 normal
