# Set cooldown
scoreboard players set @s stellarity.item.rk.cooldown 960
tag @s add stellarity.item.rk.on_cooldown

# Start sounds
execute store result score #rnd kohara.misc run random value 1..3
execute if score #rnd kohara.misc matches 1 run playsound stellarity:item/radiant_kaleidoscope/reload_start1 player @s ~ ~ ~ 1 1
execute if score #rnd kohara.misc matches 2 run playsound stellarity:item/radiant_kaleidoscope/reload_start2 player @s ~ ~ ~ 1 1
execute if score #rnd kohara.misc matches 3 run playsound stellarity:item/radiant_kaleidoscope/reload_start3 player @s ~ ~ ~ 1 1

# Ambient loop
playsound stellarity:item.radiant_kaleidoscope.charge_loop player @s ~ ~ ~ 0.8 1

# Dissipate VFX
particle end_rod ~ ~1 ~ 0.2 0.3 0.2 0.05 10
