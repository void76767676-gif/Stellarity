scoreboard players reset @s foka.items.spirit_dagger.consume_time

# Advancement
execute if score #distance foka.misc matches 600.. run advancement grant @s only fokastudio:end/exploration/spirit_assasin

# Prevent any fall damage
effect give @s slow_falling 1 0 true

# Teleport
tp @s ~ ~-0.2 ~
tag @s add foka.spirit_dagger.teleport
schedule function fokastudio:end/items/spirit_dagger/effects/scheduled_remove_tag 1t append

# Attack buffs
function fokastudio:end/items/spirit_dagger/effects/buff

# Reset actionbar
title @s actionbar ""

# Damage
execute store result score #temp_1 foka.misc run data get entity @s SelectedItem.tag.Enchantments.[{id:"minecraft:sweeping"}].lvl 7.5
execute store result score #temp_2 foka.misc run data get entity @s Inventory[{Slot:-106b}].tag.Enchantments.[{id:"minecraft:sweeping"}].lvl 7.5
scoreboard players operation #temp_1 foka.misc += #temp_2 foka.misc
scoreboard players operation #sweeping foka.misc = #temp_1 foka.misc

execute store result score #temp_1 foka.misc run data get entity @s SelectedItem.tag.Enchantments.[{id:"minecraft:fire_aspect"}].lvl 1
execute store result score #temp_2 foka.misc run data get entity @s Inventory[{Slot:-106b}].tag.Enchantments.[{id:"minecraft:fire_aspect"}].lvl 1
scoreboard players operation #temp_1 foka.misc += #temp_2 foka.misc
scoreboard players operation #fire_aspect foka.misc = #temp_1 foka.misc

execute store result score #temp_1 foka.misc run data get entity @s SelectedItem.tag.Enchantments.[{id:"minecraft:knockback"}].lvl 1
execute store result score #temp_2 foka.misc run data get entity @s Inventory[{Slot:-106b}].tag.Enchantments.[{id:"minecraft:knockback"}].lvl 1
scoreboard players operation #temp_1 foka.misc += #temp_2 foka.misc
scoreboard players operation #knockback foka.misc = #temp_1 foka.misc

execute store result score #temp_1 foka.misc run data get entity @s SelectedItem.tag.Enchantments.[{id:"minecraft:bane_of_arthropods"}].lvl 1
execute store result score #temp_2 foka.misc run data get entity @s Inventory[{Slot:-106b}].tag.Enchantments.[{id:"minecraft:bane_of_arthropods"}].lvl 1
scoreboard players operation #temp_1 foka.misc += #temp_2 foka.misc
scoreboard players operation #bane foka.misc = #temp_1 foka.misc

execute as @e[type=!#fokastudio:end/invalid_targets,distance=..4,predicate=!fokastudio:end/items/spirit_dagger/holding,predicate=!fokastudio:end/utils/player/is_sneaking] at @s run function fokastudio:end/items/spirit_dagger/effects/damage

# Visuals
function fokastudio:end/items/spirit_dagger/effects/teleport/visuals

# Sounds
function fokastudio:end/items/spirit_dagger/effects/teleport/sounds

# Kill Spirit
kill @e[type=armor_stand,limit=1,sort=nearest,tag=foka.spirit_dagger.spirit]
