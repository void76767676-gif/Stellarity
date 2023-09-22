particle explosion ~ ~ ~ 0 0 0 0 1 force
playsound minecraft:entity.generic.explode player @a[distance=0..] ~ ~ ~ 1 1

execute as @e[type=!#stellarity:invalid_targets,distance=..2.2] run damage @s 6 stellarity:simulated_explosion by @s

kill @s
