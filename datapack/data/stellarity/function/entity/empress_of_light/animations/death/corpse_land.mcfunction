tag @s remove stellarity.empress_of_light.falling
tag @s add stellarity.empress_of_light.landed

playsound entity.generic.explode block @a[distance=0..] ~ ~ ~ 0.4 0.6
playsound stellarity:misc.dream_enter block @a[distance=0..] ~ ~ ~ 0.8 1.1

particle end_rod ~ ~0.2 ~ 0.5 0.1 0.5 0.02 20
particle dust{color:[1.0,0.85,0.2],scale:1.2} ~ ~0.2 ~ 0.6 0.1 0.6 0 25
particle poof ~ ~0.1 ~ 0.4 0.1 0.4 0.02 12

execute at @s run tp @e[type=interaction,tag=stellarity.empress_of_light.corpse_hitbox,distance=..3] ~ ~ ~
