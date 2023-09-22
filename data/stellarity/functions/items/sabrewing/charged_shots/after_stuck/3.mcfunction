particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
playsound minecraft:entity.generic.explode player @a[distance=0..] ~ ~ ~ 1 0.8

execute as @e[type=!#stellarity:invalid_targets,distance=..3.5] run damage @s 12 stellarity:simulated_explosion by @s

kill @s
