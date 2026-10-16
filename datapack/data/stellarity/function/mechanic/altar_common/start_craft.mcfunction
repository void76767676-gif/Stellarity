# Prevent re-triggering if craft convergence is already active
execute if score @s stellarity.altar.craft_progress matches 1.. run return 0

# Starts the 1-second (20 ticks) altar crafting convergence sequence
scoreboard players set @s stellarity.altar.craft_progress 20
scoreboard players set @s stellarity.altar.idle_timer 0

# Tag ingredient items to pull them in
tag @e[type=item,distance=..2.2,tag=stellarity.altar.captured,tag=!stellarity.altar.skip] add stellarity.altar.in_craft

# Any loose non-captured item is released and pushed away (never killed)
execute as @e[type=item,distance=..2.5,tag=!stellarity.altar.in_craft,tag=!stellarity.altar.skip] at @s run data merge entity @s {NoGravity:0b,PickupDelay:0s,Motion:[0.0,0.2,0.0]}

# Initial activation sound and charge effect
playsound stellarity:mechanic.altar_of_the_accursed.insert block @a ~ ~0.5 ~ 0.9 1.1
playsound minecraft:block.enchantment_table.use block @a ~ ~0.5 ~ 0.85 0.8
particle end_rod ~ ~0.5 ~ 0.1 0.1 0.1 0.05 10
