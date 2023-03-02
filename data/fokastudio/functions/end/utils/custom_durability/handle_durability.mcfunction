tag @s remove foka.custom_durability.scheduled

execute if data entity @s SelectedItem.tag.foka_durability{enabled:1b} unless data entity @s SelectedItem.tag.foka_durability{item_dur:0} run function fokastudio:end/utils/custom_durability/process_mainhand
execute if data entity @s Inventory[{Slot:-106b}].tag.foka_durability{enabled:1b} run function fokastudio:end/utils/custom_durability/process_offhand

execute if data entity @s Inventory[{Slot:100b}].tag.foka_durability{enabled:1b} run function fokastudio:end/utils/custom_durability/process_boots
execute if data entity @s Inventory[{Slot:101b}].tag.foka_durability{enabled:1b} run function fokastudio:end/utils/custom_durability/process_leggings
execute if data entity @s Inventory[{Slot:102b}].tag.foka_durability{enabled:1b} run function fokastudio:end/utils/custom_durability/process_chestplate
execute if data entity @s Inventory[{Slot:103b}].tag.foka_durability{enabled:1b} run function fokastudio:end/utils/custom_durability/process_helmet

# The wackiest, buggiest and least optimized way to fix
# 1.19.3 armor equip sounds on custom durability change
# I hate myself for doing this, but I did what I had to
stopsound @a[distance=..24] * minecraft:item.armor.equip_chain
stopsound @a[distance=..24] * minecraft:item.armor.equip_diamond
stopsound @a[distance=..24] * minecraft:item.armor.equip_elytra
stopsound @a[distance=..24] * minecraft:item.armor.equip_generic
stopsound @a[distance=..24] * minecraft:item.armor.equip_gold
stopsound @a[distance=..24] * minecraft:item.armor.equip_iron
stopsound @a[distance=..24] * minecraft:item.armor.equip_leather
stopsound @a[distance=..24] * minecraft:item.armor.equip_netherite
stopsound @a[distance=..24] * minecraft:item.armor.equip_turtle
