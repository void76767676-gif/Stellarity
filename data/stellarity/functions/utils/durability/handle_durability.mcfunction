tag @s remove stellarity.durability.scheduled

# Hands
execute if data entity @s SelectedItem.tag.stellar_durability{enabled:1b} unless data entity @s SelectedItem.tag.stellar_durability{item_dur:0} run function stellarity:utils/durability/process/mainhand
execute if data entity @s Inventory[{Slot:-106b}].tag.stellar_durability{enabled:1b} run function stellarity:utils/durability/process/offhand

# Armor
execute if data entity @s Inventory[{Slot:100b}].tag.stellar_durability{enabled:1b} run function stellarity:utils/durability/process/boots
execute if data entity @s Inventory[{Slot:101b}].tag.stellar_durability{enabled:1b} run function stellarity:utils/durability/process/leggings
execute if data entity @s Inventory[{Slot:102b}].tag.stellar_durability{enabled:1b} run function stellarity:utils/durability/process/chestplate
execute if data entity @s Inventory[{Slot:103b}].tag.stellar_durability{enabled:1b} run function stellarity:utils/durability/process/helmet

# The wackiest, buggiest and least optimized way to fix
# armor equip sounds on custom durability change introduced in 1.19.3
stopsound @a[distance=..24] * minecraft:item.armor.equip_chain
stopsound @a[distance=..24] * minecraft:item.armor.equip_diamond
stopsound @a[distance=..24] * minecraft:item.armor.equip_elytra
stopsound @a[distance=..24] * minecraft:item.armor.equip_generic
stopsound @a[distance=..24] * minecraft:item.armor.equip_gold
stopsound @a[distance=..24] * minecraft:item.armor.equip_iron
stopsound @a[distance=..24] * minecraft:item.armor.equip_leather
stopsound @a[distance=..24] * minecraft:item.armor.equip_netherite
stopsound @a[distance=..24] * minecraft:item.armor.equip_turtle

advancement revoke @s only stellarity:events/custom_item_durability_change
