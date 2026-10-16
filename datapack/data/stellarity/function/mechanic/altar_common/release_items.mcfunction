# Releases all items orbiting this altar to the player
scoreboard players operation #current_altar stellarity.altar_id = @s stellarity.altar_id

# Target items belonging to this altar
execute as @e[type=item,distance=..3.0,tag=stellarity.altar.captured] if score @s stellarity.altar_id = #current_altar stellarity.altar_id at @s run data merge entity @s {NoGravity:0b,PickupDelay:0s,Age:0s,Glowing:0b,Motion:[0.0,0.18,0.0]}
execute as @e[type=item,distance=..3.0,tag=stellarity.altar.captured] if score @s stellarity.altar_id = #current_altar stellarity.altar_id run tag @s remove stellarity.altar.captured
execute as @e[type=item,distance=..3.0,tag=stellarity.altar.captured] if score @s stellarity.altar_id = #current_altar stellarity.altar_id run tag @s remove stellarity.altar.init
execute as @e[type=item,distance=..3.0,tag=stellarity.altar.captured] if score @s stellarity.altar_id = #current_altar stellarity.altar_id run scoreboard players reset @s stellarity.altar_id

# Clear slot tags
tag @e[type=item,distance=..3.0] remove stellarity.altar.slotted
tag @e[type=item,distance=..3.0] remove stellarity.altar.slot1
tag @e[type=item,distance=..3.0] remove stellarity.altar.slot2
tag @e[type=item,distance=..3.0] remove stellarity.altar.slot3
tag @e[type=item,distance=..3.0] remove stellarity.altar.slot4
tag @e[type=item,distance=..3.0] remove stellarity.altar.slot5
tag @e[type=item,distance=..3.0] remove stellarity.altar.slot6
tag @e[type=item,distance=..3.0] remove stellarity.altar.slot7
tag @e[type=item,distance=..3.0] remove stellarity.altar.slot8
tag @e[type=item,distance=..3.0] remove stellarity.altar.init

# Reset any active craft progress
scoreboard players reset @s stellarity.altar.craft_progress
scoreboard players set @s stellarity.altar.idle_timer 0
data remove storage stellarity:temp altar.craft
execute as @e[type=item,distance=..3.0,tag=stellarity.altar.in_craft] at @s run data merge entity @s {NoGravity:0b,PickupDelay:0s,Age:0s,Glowing:0b,Motion:[0.0,0.18,0.0]}
tag @e[type=item,distance=..3.0] remove stellarity.altar.in_craft

# Teleport towards player if close
execute at @p[distance=..4.0,limit=1] as @e[type=item,distance=..3.0] run tp @s ~ ~0.5 ~
playsound minecraft:entity.item.pickup player @p[distance=..4.0] ~ ~ ~ 0.8 1.2
scoreboard players set @s stellarity.altar_items 0
