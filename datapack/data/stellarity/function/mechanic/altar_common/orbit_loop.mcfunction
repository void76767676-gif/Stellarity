# Altar items orbital rotation & merge loop
# Executed at altar marker every tick

# 1. Player sneak pickup: allow picking up items when sneaking nearby
execute if entity @p[distance=..3.5,predicate=kohara:player/is_sneaking] as @e[type=item,distance=..2.2,tag=!stellarity.altar.in_craft] run data modify entity @s PickupDelay set value 0s

# 2. Check if currently in crafting convergence sequence
execute if score @s stellarity.altar.craft_progress matches 1.. run return run function stellarity:mechanic/altar_common/craft_tick

# 3. Item stacking/merging: merge loose items of the same type to avoid clutter
execute as @e[type=item,distance=..2.0,tag=!stellarity.altar.skip,tag=!stellarity.altar.in_craft] at @s run function stellarity:mechanic/altar_common/merge_check

# 4. Count total items to arrange around the altar
scoreboard players set #altar_items stellarity.misc 0
execute store result score #altar_items stellarity.misc if entity @e[type=item,distance=..2.0,tag=!stellarity.altar.skip,tag=!stellarity.altar.in_craft]

# If no items, return
execute if score #altar_items stellarity.misc matches 0 run return 0

# Rotate the altar anchor 2.5 degrees each tick
tp @s ~ ~ ~ ~2.5 ~

# Calculate angle separation: 360 / items
scoreboard players set #altar_base_angle stellarity.misc 360
scoreboard players operation #altar_base_angle stellarity.misc /= #altar_items stellarity.misc

data merge storage stellarity:temp {altar:{angle:{base:0,radius:"0.85",height:"-0.1"}}}
execute store result storage stellarity:temp altar.angle.base int 1 run scoreboard players get #altar_base_angle stellarity.misc

# Assign slot tags to all items cleanly
tag @e[type=item,distance=..2.2] remove stellarity.altar.slotted
tag @e[type=item,distance=..2.2] remove stellarity.altar.slot1
tag @e[type=item,distance=..2.2] remove stellarity.altar.slot2
tag @e[type=item,distance=..2.2] remove stellarity.altar.slot3
tag @e[type=item,distance=..2.2] remove stellarity.altar.slot4
tag @e[type=item,distance=..2.2] remove stellarity.altar.slot5
tag @e[type=item,distance=..2.2] remove stellarity.altar.slot6
tag @e[type=item,distance=..2.2] remove stellarity.altar.slot7
tag @e[type=item,distance=..2.2] remove stellarity.altar.slot8

execute as @e[type=item,distance=..2.2,tag=!stellarity.altar.skip,tag=!stellarity.altar.in_craft,tag=!stellarity.altar.slotted,limit=1] run function stellarity:mechanic/altar_common/assign_slot {slot:"slot1"}
execute as @e[type=item,distance=..2.2,tag=!stellarity.altar.skip,tag=!stellarity.altar.in_craft,tag=!stellarity.altar.slotted,limit=1] run function stellarity:mechanic/altar_common/assign_slot {slot:"slot2"}
execute as @e[type=item,distance=..2.2,tag=!stellarity.altar.skip,tag=!stellarity.altar.in_craft,tag=!stellarity.altar.slotted,limit=1] run function stellarity:mechanic/altar_common/assign_slot {slot:"slot3"}
execute as @e[type=item,distance=..2.2,tag=!stellarity.altar.skip,tag=!stellarity.altar.in_craft,tag=!stellarity.altar.slotted,limit=1] run function stellarity:mechanic/altar_common/assign_slot {slot:"slot4"}
execute as @e[type=item,distance=..2.2,tag=!stellarity.altar.skip,tag=!stellarity.altar.in_craft,tag=!stellarity.altar.slotted,limit=1] run function stellarity:mechanic/altar_common/assign_slot {slot:"slot5"}
execute as @e[type=item,distance=..2.2,tag=!stellarity.altar.skip,tag=!stellarity.altar.in_craft,tag=!stellarity.altar.slotted,limit=1] run function stellarity:mechanic/altar_common/assign_slot {slot:"slot6"}
execute as @e[type=item,distance=..2.2,tag=!stellarity.altar.skip,tag=!stellarity.altar.in_craft,tag=!stellarity.altar.slotted,limit=1] run function stellarity:mechanic/altar_common/assign_slot {slot:"slot7"}
execute as @e[type=item,distance=..2.2,tag=!stellarity.altar.skip,tag=!stellarity.altar.in_craft,tag=!stellarity.altar.slotted,limit=1] run function stellarity:mechanic/altar_common/assign_slot {slot:"slot8"}

# Teleport items along the orbital circle using macro
function stellarity:mechanic/altar_common/teleport_orbit with storage stellarity:temp altar.angle

# Prevent items from falling or decaying, add hovering physics
execute as @e[type=item,distance=..2.2,tag=!stellarity.altar.skip] run data merge entity @s {NoGravity:1b,Motion:[0.0,0.0,0.0],PickupDelay:20s}
execute as @e[type=item,distance=..2.2,tag=!stellarity.altar.skip] at @s run particle portal ~ ~ ~ 0.02 0.02 0.02 0.01 1
