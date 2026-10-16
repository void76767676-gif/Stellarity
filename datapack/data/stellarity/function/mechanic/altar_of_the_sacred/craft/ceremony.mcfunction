# 1. Tag ingredients to pull in and consume
execute as @e[type=item,distance=..2.0] if data entity @s {Item:{id:"minecraft:glowstone_dust"}} run tag @s add stellarity.rk.ingredient
execute as @e[type=item,distance=..2.0] if data entity @s {Item:{components:{"minecraft:custom_data":{"stellarity:item":"starlight_soot"}}}} run tag @s add stellarity.rk.ingredient
execute as @e[type=item,distance=..2.0] if data entity @s {Item:{components:{"minecraft:custom_data":{"stellarity:item":"kaleidoscope"}}}} run tag @s add stellarity.rk.ingredient
execute as @e[type=item,distance=..2.0] if data entity @s {Item:{components:{"minecraft:custom_data":{"stellarity:item":"radiant_jewel"}}}} run tag @s add stellarity.rk.ingredient

# Pull ingredients to center & delete
execute as @e[type=item,distance=..2.0,tag=stellarity.rk.ingredient] at @s run tp @s ~ ~0.5 ~
execute as @e[type=item,distance=..2.0,tag=stellarity.rk.ingredient] run kill @s

# 2. Sounds: obtain.ogg and obtain_screen.ogg
playsound stellarity:item.radiant_kaleidoscope.obtain block @a ~ ~ ~ 1.5 1
playsound stellarity:item.radiant_kaleidoscope.obtain_screen block @a ~ ~ ~ 1.5 1

# 3. Whirlwind of rainbow dust & flash particles
particle flash{color:-1} ~ ~0.5 ~ 0 0 0 0 3
particle end_rod ~ ~0.5 ~ 0.4 0.4 0.4 0.15 48
particle explosion ~ ~0.5 ~ 0.3 0.3 0.3 0 2

# Rainbow dust whirlwind (all 7 canonical colors)
particle dust{color:[0.90, 0.20, 0.15],scale:1.6} ~ ~0.5 ~ 0.8 0.5 0.8 0.15 35
particle dust{color:[1.00, 0.60, 0.05],scale:1.6} ~ ~0.5 ~ 0.8 0.5 0.8 0.15 35
particle dust{color:[0.95, 0.85, 0.10],scale:1.6} ~ ~0.5 ~ 0.8 0.5 0.8 0.15 35
particle dust{color:[0.10, 0.75, 0.45],scale:1.6} ~ ~0.5 ~ 0.8 0.5 0.8 0.15 35
particle dust{color:[0.15, 0.65, 0.95],scale:1.6} ~ ~0.5 ~ 0.8 0.5 0.8 0.15 35
particle dust{color:[0.20, 0.25, 0.85],scale:1.6} ~ ~0.5 ~ 0.8 0.5 0.8 0.15 35
particle dust{color:[0.65, 0.20, 0.85],scale:1.6} ~ ~0.5 ~ 0.8 0.5 0.8 0.15 35

# 4. Spawn Radiant Kaleidoscope item protected from despawn and fire
loot spawn ~ ~0.6 ~ loot stellarity:item/weapon/radiant_kaleidoscope
data merge entity @n[type=item,distance=..1.5] {Invulnerable:1b,Age:-32768s,PickupDelay:10s,Glowing:1b,Tags:["stellarity.altar_of_the_sacred.skip","stellarity.item.radiant_kaleidoscope"]}
