# 1. Flash burst and heavy thunder impact
    particle minecraft:flash{color:-1} ~ ~-.4 ~ 0 0 0 0 0 force
    particle end_rod ~ ~-.4 ~ 0 0 0 0.15 32 normal

playsound minecraft:entity.warden.heartbeat block @a[distance=0..] ~ ~-.4 ~ 1.0 1.0
playsound minecraft:item.trident.thunder block @a[distance=0..] ~ ~-.4 ~ 1.0 1.1
playsound stellarity:misc.victory_core_bling block @a[distance=0..] ~ ~-.4 ~ 0.85 1.0

# 2. Consume the ingredients
    kill @e[type=item,distance=..2.2,tag=stellarity.altar.in_craft]

# 3. Spawn output item & apply modifications
    function stellarity:mechanic/altar_common/craft_spawn_output with storage stellarity:temp altar.craft

playsound stellarity:mechanic.altar_of_the_accursed.ready ambient @a[distance=0..] ~ ~0.5 ~ 9 0.9 1.0

# 4. Advancement grant & cleanup
    advancement grant @a[distance=..6] only stellarity:altar_of_the_accursed/cursed_crafting
    scoreboard players reset @s stellarity.altar.craft_progress
    data remove storage stellarity:temp altar.craft
