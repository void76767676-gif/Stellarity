# Altar items orbital rotation loop
# Executed at altar marker every tick

# Ensure marker has a unique altar ID
execute unless score @s stellarity.altar_id matches 1.. run scoreboard players add #next_altar_id stellarity.misc 1
execute unless score @s stellarity.altar_id matches 1.. run scoreboard players operation @s stellarity.altar_id = #next_altar_id stellarity.misc
scoreboard players operation #current_altar stellarity.altar_id = @s stellarity.altar_id

# 1. Check if currently in crafting convergence sequence
execute if score @s stellarity.altar.craft_progress matches 1.. run return run function stellarity:mechanic/altar_common/craft_tick

# Sneak retrieval
execute if entity @e[type=item,distance=..3.0] if entity @p[distance=..5.5,predicate=kohara:player/is_sneaking] run return run function stellarity:mechanic/altar_common/release_items

# 2.1 First time approach sound & advancement
execute as @a[distance=..6.0] unless score @s stellarity.altar_approached matches 1.. at @s run function stellarity:mechanic/altar_common/on_first_approach

# 3. Exclude offerings on Sacred Altar from orbiting
execute if entity @s[tag=stellarity.altar_of_the_sacred] as @e[type=item,distance=..2.5,tag=!stellarity.altar.skip] if items entity @s contents *[custom_data~{"stellarity:item":"starlight_soot"}] run tag @s add stellarity.altar.skip
execute if entity @s[tag=stellarity.altar_of_the_sacred] as @e[type=item,distance=..2.5,tag=!stellarity.altar.skip] if entity @s[tag=stellarity.starlight_soot] run tag @s add stellarity.altar.skip
execute if entity @s[tag=stellarity.altar_of_the_sacred] as @e[type=item,distance=..2.5,tag=!stellarity.altar.skip] if items entity @s contents *[custom_data~{"stellarity:item":"shulker_body"}] run tag @s add stellarity.altar.skip
execute if entity @s[tag=stellarity.altar_of_the_sacred] as @e[type=item,distance=..2.5,tag=!stellarity.altar.skip] if items entity @s contents *[custom_data~{"stellarity:item":"treasure_head"}] run tag @s add stellarity.altar.skip
execute if entity @s[tag=stellarity.altar_of_the_sacred] as @e[type=item,distance=..2.5,tag=!stellarity.altar.skip] if items entity @s contents minecraft:iron_ingot run tag @s add stellarity.altar.skip
execute if entity @s[tag=stellarity.altar_of_the_sacred] as @e[type=item,distance=..2.5,tag=!stellarity.altar.skip] if items entity @s contents minecraft:gold_ingot run tag @s add stellarity.altar.skip
execute if entity @s[tag=stellarity.altar_of_the_sacred] as @e[type=item,distance=..2.5,tag=!stellarity.altar.skip] if items entity @s contents minecraft:emerald run tag @s add stellarity.altar.skip
execute if entity @s[tag=stellarity.altar_of_the_sacred] as @e[type=item,distance=..2.5,tag=!stellarity.altar.skip] if items entity @s contents minecraft:diamond run tag @s add stellarity.altar.skip
execute if entity @s[tag=stellarity.altar_of_the_sacred] as @e[type=item,distance=..2.5,tag=!stellarity.altar.skip] if items entity @s contents minecraft:netherite_ingot run tag @s add stellarity.altar.skip
execute as @e[type=item,distance=..2.5,tag=!stellarity.altar.skip] if entity @s[tag=stellarity.altar_of_the_accursed.skip] run tag @s add stellarity.altar.skip

# 3.1 Clean up release tag when items are far
execute as @e[type=item,distance=3.0..,tag=stellarity.altar.released] run tag @s remove stellarity.altar.released

# 4. Claim newly dropped loose items within 2.0 blocks for this altar
execute unless entity @p[distance=..5.5,predicate=kohara:player/is_sneaking] as @e[type=item,distance=..2.0,tag=!stellarity.altar.skip,tag=!stellarity.altar.captured,tag=!stellarity.altar.released,tag=!stellarity.brewing.item_display] run scoreboard players operation @s stellarity.altar_id = #current_altar stellarity.altar_id
execute unless entity @p[distance=..5.5,predicate=kohara:player/is_sneaking] as @e[type=item,distance=..2.0,tag=!stellarity.altar.skip,tag=!stellarity.altar.captured,tag=!stellarity.altar.released,tag=!stellarity.brewing.item_display] run tag @s add stellarity.altar.captured

# 4.1 Automatic item stack merging for identical items on altar
execute as @e[type=item,distance=..2.5,tag=stellarity.altar.captured,tag=!stellarity.altar.skip,tag=!stellarity.altar.in_craft] at @s run function stellarity:mechanic/altar_common/merge_check

# 5. Physics lock and pickup prevention: items can NEVER be accidentally vacuumed or despawned
execute as @e[type=item,distance=..2.5,tag=stellarity.altar.captured] if score @s stellarity.altar_id = #current_altar stellarity.altar_id run data modify entity @s PickupDelay set value 32767s
execute as @e[type=item,distance=..2.5,tag=stellarity.altar.captured] if score @s stellarity.altar_id = #current_altar stellarity.altar_id run data modify entity @s NoGravity set value 1b
execute as @e[type=item,distance=..2.5,tag=stellarity.altar.captured] if score @s stellarity.altar_id = #current_altar stellarity.altar_id run data modify entity @s Motion set value [0.0,0.0,0.0]
execute as @e[type=item,distance=..2.5,tag=stellarity.altar.captured] if score @s stellarity.altar_id = #current_altar stellarity.altar_id run data modify entity @s Age set value -32768s
execute as @e[type=item,distance=..2.5,tag=stellarity.altar.captured] if score @s stellarity.altar_id = #current_altar stellarity.altar_id run data modify entity @s Glowing set value 1b
execute as @e[type=item,distance=..2.5,tag=stellarity.altar.captured] if score @s stellarity.altar_id = #current_altar stellarity.altar_id run team join stellarity.purple_glow @s

# 6. Subtle ambient portal particles from altar
particle minecraft:portal ~ ~0.35 ~ 0.35 0.1 0.35 0.05 3

# 7. Count total items belonging to this altar
scoreboard players set #altar_items stellarity.misc 0
execute as @e[type=item,distance=..2.5,tag=stellarity.altar.captured,tag=!stellarity.altar.skip,tag=!stellarity.altar.in_craft] if score @s stellarity.altar_id = #current_altar stellarity.altar_id run scoreboard players add #altar_items stellarity.misc 1

# If no items, reset state and return
execute if score #altar_items stellarity.misc matches 0 run scoreboard players set @s stellarity.altar_items 0
execute if score #altar_items stellarity.misc matches 0 run scoreboard players set @s stellarity.altar.idle_timer 0
execute if score #altar_items stellarity.misc matches 0 run return 0

# 8. Stable slot assignment: ONLY re-assign slots if the number of items changed
execute unless score #altar_items stellarity.misc = @s stellarity.altar_items run function stellarity:mechanic/altar_common/repack_slots
scoreboard players operation @s stellarity.altar_items = #altar_items stellarity.misc

# 9. Rotate the altar anchor 2.0 degrees each tick
tp @s ~ ~ ~ ~2.0 ~

# 10. Calculate angle separation: 360 / items
scoreboard players set #altar_base_angle stellarity.misc 360
scoreboard players operation #altar_base_angle stellarity.misc /= #altar_items stellarity.misc

data merge storage stellarity:temp {altar:{angle:{base:0,radius:"0.80",height:"0.3"}}}
execute store result storage stellarity:temp altar.angle.base int 1 run scoreboard players get #altar_base_angle stellarity.misc

# 11. Teleport items along orbital circle
function stellarity:mechanic/altar_common/teleport_orbit with storage stellarity:temp altar.angle

# 12. Subtle ambient particles for each orbiting item
execute as @e[type=item,distance=..2.5,tag=stellarity.altar.captured] if score @s stellarity.altar_id = #current_altar stellarity.altar_id at @s run particle minecraft:portal ~ ~0.2 ~ 0.04 0.04 0.04 0.02 1
