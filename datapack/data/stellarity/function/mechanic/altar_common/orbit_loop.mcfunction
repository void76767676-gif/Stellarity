# Altar items orbital rotation & merge loop
# Executed at altar marker every tick

# Ensure marker has a unique altar ID
execute unless score @s stellarity.altar_id matches 1.. run scoreboard players add #next_altar_id stellarity.misc 1
execute unless score @s stellarity.altar_id matches 1.. run scoreboard players operation @s stellarity.altar_id = #next_altar_id stellarity.misc
scoreboard players operation #current_altar stellarity.altar_id = @s stellarity.altar_id

# 1. Player sneak pickup: immediately release all items to sneaking player
execute if entity @p[distance=..3.5,predicate=kohara:player/is_sneaking] run return run function stellarity:mechanic/altar_common/release_items

# 2. Check if currently in crafting convergence sequence
execute if score @s stellarity.altar.craft_progress matches 1.. run return run function stellarity:mechanic/altar_common/craft_tick

# 3. Exclude starlight soot on Sacred Altar from orbiting (must stay centered)
execute as @e[type=item,distance=..2.0,tag=!stellarity.altar.skip] if items entity @s contents *[custom_data~{"stellarity:item":"starlight_soot"}] run tag @s add stellarity.altar.skip
execute as @e[type=item,distance=..2.0,tag=!stellarity.altar.skip] if entity @s[tag=stellarity.starlight_soot] run tag @s add stellarity.altar.skip
execute as @e[type=item,distance=..2.0,tag=!stellarity.altar.skip] if entity @s[tag=stellarity.altar_of_the_accursed.skip] run tag @s add stellarity.altar.skip

# 4. Claim newly dropped loose items within 1.8 blocks for this altar
execute as @e[type=item,distance=..1.8,tag=!stellarity.altar.skip,tag=!stellarity.altar.captured,tag=!stellarity.brewing.item_display] run scoreboard players operation @s stellarity.altar_id = #current_altar stellarity.altar_id
execute as @e[type=item,distance=..1.8,tag=!stellarity.altar.skip,tag=!stellarity.altar.captured,tag=!stellarity.brewing.item_display] run tag @s add stellarity.altar.captured

# 5. Item stacking/merging: merge loose items belonging to this altar
execute as @e[type=item,distance=..2.0,tag=stellarity.altar.captured,tag=!stellarity.altar.skip,tag=!stellarity.altar.in_craft] if score @s stellarity.altar_id = #current_altar stellarity.altar_id at @s run function stellarity:mechanic/altar_common/merge_check

# 6. Count total items belonging to this altar
scoreboard players set #altar_items stellarity.misc 0
execute as @e[type=item,distance=..2.2,tag=stellarity.altar.captured,tag=!stellarity.altar.skip,tag=!stellarity.altar.in_craft] if score @s stellarity.altar_id = #current_altar stellarity.altar_id run scoreboard players add #altar_items stellarity.misc 1

# If no items, cleanup and return
execute if score #altar_items stellarity.misc matches 0 run scoreboard players set @s stellarity.altar_items 0
execute if score #altar_items stellarity.misc matches 0 run return 0

# 7. Stable slot assignment: ONLY re-assign slots if the number of items changed
execute unless score #altar_items stellarity.misc = @s stellarity.altar_items run function stellarity:mechanic/altar_common/repack_slots
scoreboard players operation @s stellarity.altar_items = #altar_items stellarity.misc

# 8. Rotate the altar anchor 2.5 degrees each tick
tp @s ~ ~ ~ ~2.5 ~

# 9. Calculate angle separation: 360 / items
scoreboard players set #altar_base_angle stellarity.misc 360
scoreboard players operation #altar_base_angle stellarity.misc /= #altar_items stellarity.misc

data merge storage stellarity:temp {altar:{angle:{base:0,radius:"0.85",height:"-0.1"}}}
execute store result storage stellarity:temp altar.angle.base int 1 run scoreboard players get #altar_base_angle stellarity.misc

# 10. Teleport items along the orbital circle using macro
function stellarity:mechanic/altar_common/teleport_orbit with storage stellarity:temp altar.angle

# 11. Despawn protection & hover physics (prevent items from despawning or falling)
execute as @e[type=item,distance=..2.2,tag=stellarity.altar.captured] if score @s stellarity.altar_id = #current_altar stellarity.altar_id run data merge entity @s {NoGravity:1b,Motion:[0.0,0.0,0.0],PickupDelay:10s,Age:-32768s}
execute as @e[type=item,distance=..2.2,tag=stellarity.altar.captured] if score @s stellarity.altar_id = #current_altar stellarity.altar_id at @s run particle portal ~ ~ ~ 0.02 0.02 0.02 0.01 1
