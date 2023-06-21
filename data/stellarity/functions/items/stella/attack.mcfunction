advancement revoke @s only stellarity:events/items/attack_with_stella

playsound minecraft:entity.ender_dragon.hurt player @a ~ ~ ~ 0.4 1

execute as @e[type=!#stellarity:invalid_targets,nbt={HurtTime:10s},distance=..6.5,sort=nearest] run function stellarity:items/stella/burn
execute as @e[type=!#stellarity:invalid_targets,nbt=!{HurtTime:0s},scores={stellarity.items.stella.fire_stacks=1..},distance=..6.5,sort=nearest] run function stellarity:items/stella/burn
