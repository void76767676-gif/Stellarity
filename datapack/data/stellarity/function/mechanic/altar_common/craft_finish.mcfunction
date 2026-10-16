# 1. Flash burst and heavy thunder impact
particle minecraft:flash{color:-1} ~ ~-.4 ~ 0 0 0 0 0 force
particle end_rod ~ ~-.4 ~ 0 0 0 0.15 32 normal

playsound minecraft:entity.warden.heartbeat block @a[distance=0..] ~ ~-.4 ~ 1.0 1.0
playsound minecraft:item.trident.thunder block @a[distance=0..] ~ ~-.4 ~ 1.0 1.1
playsound stellarity:misc.victory_core_bling block @a[distance=0..] ~ ~-.4 ~ 0.85 1.0

# 2. Consume ONLY the actual crafting ingredients (for dye_elytra or trim_elytra, preserve the elytra!)
execute unless data storage stellarity:temp {altar:{craft:{type:"dye_elytra"}}} unless data storage stellarity:temp {altar:{craft:{type:"trim_elytra"}}} run kill @e[type=item,distance=..3.0,tag=stellarity.altar.in_craft]
execute if data storage stellarity:temp {altar:{craft:{type:"dye_elytra"}}} run kill @e[type=item,distance=..3.0,tag=stellarity.altar.in_craft,tag=!stellarity.altar_of_the_accursed.minecraft.elytra]
execute if data storage stellarity:temp {altar:{craft:{type:"trim_elytra"}}} run kill @e[type=item,distance=..3.0,tag=stellarity.altar.in_craft,tag=!stellarity.altar_of_the_accursed.minecraft.elytra]

# Release any extra captured items that were not part of the craft (never kill extra items!)
execute as @e[type=item,distance=..3.0,tag=stellarity.altar.captured] at @s run data merge entity @s {NoGravity:0b,PickupDelay:0s,Age:0s,Glowing:0b,Motion:[0.0,0.15,0.0]}
tag @e[type=item,distance=..3.0,tag=stellarity.altar.captured] remove stellarity.altar.captured
tag @e[type=item,distance=..3.0] remove stellarity.altar.init

# 3. Spawn output item & apply modifications
function stellarity:mechanic/altar_common/craft_spawn_output with storage stellarity:temp altar.craft

playsound stellarity:mechanic.altar_of_the_accursed.ready ambient @a[distance=0..] ~ ~0.5 ~ 9 0.9 1.0

# 4. Advancement grant & cleanup
advancement grant @a[distance=..6] only stellarity:altar_of_the_accursed/cursed_crafting
scoreboard players reset @s stellarity.altar.craft_progress
scoreboard players set @s stellarity.altar.idle_timer 0
data remove storage stellarity:temp altar.craft
