advancement revoke @s only stellarity:events/items/attack_with_stella

playsound minecraft:block.amethyst_cluster.break player @a ~ ~ ~ 1 0.8

execute as @e[type=!#stellarity:invalid_targets,nbt={HurtTime:10s},distance=..6.5,sort=nearest] run function stellarity:items/stella/burn
execute as @e[type=!#stellarity:invalid_targets,nbt=!{HurtTime:0s},scores={stellarity.items.stella.fire_stacks=1..},distance=..6.5,sort=nearest] run function stellarity:items/stella/burn
