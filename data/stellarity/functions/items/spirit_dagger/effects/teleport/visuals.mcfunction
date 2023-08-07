# Sweep
particle minecraft:sweep_attack ~ ~ ~1.75 0 0.2 0 0 1 force @a[distance=..128]
particle minecraft:sweep_attack ~ ~ ~-1.75 0 0.2 0 0 1 force @a[distance=..128]
particle minecraft:sweep_attack ~1.75 ~ ~ 0 0.2 0 0 1 force @a[distance=..128]
particle minecraft:sweep_attack ~-1.75 ~ ~ 0 0.2 0 0 1 force @a[distance=..128]

particle minecraft:sweep_attack ~1.25 ~ ~1.25 0 0.2 0 0 1 force @a[distance=..128]
particle minecraft:sweep_attack ~1.25 ~ ~-1.25 0 0.2 0 0 1 force @a[distance=..128]
particle minecraft:sweep_attack ~-1.25 ~ ~1.25 0 0.2 0 0 1 force @a[distance=..128]
particle minecraft:sweep_attack ~-1.25 ~ ~-1.25 0 0.2 0 0 1 force @a[distance=..128]

particle explosion ~ ~ ~
particle flash ~ ~ ~
particle end_rod ~ ~ ~ 0 0 0 0.1 15
particle soul_fire_flame ~ ~ ~ 0 0 0 0.1 15

execute if score #fire_aspect stellarity.misc matches 1.. run particle flame ~ ~0.05 ~ 1.25 0.33 1.25 0 23 normal
