# Makes Allays despawn naturally if they have spawned in The Hallow
execute as @e[type=allay,tag=foka.allay.natural_hallow_spawn] at @s run function fokastudio:end/mobs/the_hallow_allay_despawn

schedule function fokastudio:end/loops/3_tick 3t
