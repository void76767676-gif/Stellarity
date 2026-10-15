# Generic craft
$execute if data storage stellarity:temp {altar:{craft:{type:"generic"}}} run loot spawn ~ ~-.4 ~ loot $(loot)

# Weapon craft
$execute if data storage stellarity:temp {altar:{craft:{type:"weapon"}}} run loot spawn ~ ~-.4 ~ loot $(loot)
execute if data storage stellarity:temp {altar:{craft:{type:"weapon"}}} run data modify entity @n[type=item,tag=!stellarity.altar_of_the_accursed.checked_type,distance=..1.5] Item.components."minecraft:enchantments" set from storage stellarity:temp altar_of_the_accursed.enchants
execute if data storage stellarity:temp {altar:{craft:{type:"weapon"}}} run data modify entity @n[type=item,tag=!stellarity.altar_of_the_accursed.checked_type,distance=..1.5] Item.components."minecraft:trim" set from storage stellarity:temp altar_of_the_accursed.item."minecraft:trim"

# Armor craft
$execute if data storage stellarity:temp {altar:{craft:{type:"armor"}}} run loot spawn ~ ~-.4 ~ loot $(loot)
execute if data storage stellarity:temp {altar:{craft:{type:"armor"}}} run data modify entity @n[type=item,tag=!stellarity.altar_of_the_accursed.checked_type,distance=..1.5] Item.components."minecraft:enchantments" set from storage stellarity:temp altar_of_the_accursed.enchants
execute if data storage stellarity:temp {altar:{craft:{type:"armor"}}} run data modify entity @n[type=item,tag=!stellarity.altar_of_the_accursed.checked_type,distance=..1.5] Item.components."minecraft:trim" set from storage stellarity:temp altar_of_the_accursed.trim

# Hallowed Elytra craft
$execute if data storage stellarity:temp {altar:{craft:{type:"hallowed_elytra"}}} run loot spawn ~ ~-.4 ~ loot $(loot)
execute if data storage stellarity:temp {altar:{craft:{type:"hallowed_elytra"}}} run data modify entity @n[type=item,tag=!stellarity.altar_of_the_accursed.checked_type,distance=..1.5] Item.components."minecraft:enchantments" set from storage stellarity:temp altar_of_the_accursed.enchants
execute if data storage stellarity:temp {altar:{craft:{type:"hallowed_elytra"}}} run data modify entity @n[type=item,tag=!stellarity.altar_of_the_accursed.checked_type,distance=..1.5] Item.components."minecraft:trim" set from storage stellarity:temp altar_of_the_accursed.trim

# Dye Elytra craft
execute if data storage stellarity:temp {altar:{craft:{type:"dye_elytra"}}} run function stellarity:mechanic/altar_of_the_accursed/crafting/dye_elytra/finish_color with storage stellarity:temp altar.craft

# Special crafts
execute if data storage stellarity:temp {altar:{craft:{type:"smithing_template"}}} run loot spawn ~ ~-.4 ~ loot stellarity:item/material/enderite_smithing_template
execute if data storage stellarity:temp {altar:{craft:{type:"smithing_template"}}} run loot spawn ~ ~-.4 ~ loot stellarity:item/material/enderite_smithing_template
execute if data storage stellarity:temp {altar:{craft:{type:"endonomicon"}}} run loot spawn ~ ~-.4 ~ loot stellarity:item/spellbook/endonomicon
execute if data storage stellarity:temp {altar:{craft:{type:"call_of_the_void"}}} run loot spawn ~ ~-.4 ~ loot stellarity:item/weapon/call_of_the_void
execute if data storage stellarity:temp {altar:{craft:{type:"void_pendant"}}} run loot spawn ~ ~-.4 ~ loot stellarity:item/trinket/void_pendant

# Mark newly spawned items so they can be picked up freely
tag @e[type=item,distance=..2.0,tag=!stellarity.altar_of_the_accursed.checked_type] add stellarity.altar_of_the_accursed.skip
tag @e[type=item,distance=..2.0] remove stellarity.altar.in_craft
