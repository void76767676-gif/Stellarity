advancement revoke @s only stellarity:events/items/attack/stella

playsound minecraft:block.amethyst_cluster.break player @a[distance=0..] ~ ~ ~ 1 0.8

execute as @e[type=!#stellarity:invalid_targets,nbt={HurtTime:10s},distance=..6.5,sort=nearest] run function stellarity:items/stella/burn
