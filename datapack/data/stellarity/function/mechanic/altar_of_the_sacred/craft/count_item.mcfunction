# Check count of items dropped on Altar of the Sacred

# Glowstone dust
execute if data entity @s {Item:{id:"minecraft:glowstone_dust"}} store result score #temp stellarity.misc run data get entity @s Item.count
execute if data entity @s {Item:{id:"minecraft:glowstone_dust"}} run scoreboard players operation #glowstone stellarity.misc += #temp stellarity.misc

# Starlight soot
execute if data entity @s {Item:{components:{"minecraft:custom_data":{"stellarity:item":"starlight_soot"}}}} store result score #temp stellarity.misc run data get entity @s Item.count
execute if data entity @s {Item:{components:{"minecraft:custom_data":{"stellarity:item":"starlight_soot"}}}} run scoreboard players operation #soot stellarity.misc += #temp stellarity.misc

# Kaleidoscope
execute if data entity @s {Item:{components:{"minecraft:custom_data":{"stellarity:item":"kaleidoscope"}}}} store result score #temp stellarity.misc run data get entity @s Item.count
execute if data entity @s {Item:{components:{"minecraft:custom_data":{"stellarity:item":"kaleidoscope"}}}} run scoreboard players operation #kaleidoscope stellarity.misc += #temp stellarity.misc

# Radiant Jewel
execute if data entity @s {Item:{components:{"minecraft:custom_data":{"stellarity:item":"radiant_jewel"}}}} store result score #temp stellarity.misc run data get entity @s Item.count
execute if data entity @s {Item:{components:{"minecraft:custom_data":{"stellarity:item":"radiant_jewel"}}}} run scoreboard players operation #jewels stellarity.misc += #temp stellarity.misc
