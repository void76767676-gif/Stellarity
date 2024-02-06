damage @s 5 minecraft:mob_projectile by @e[type=shulker,limit=1,sort=nearest]

execute as @e[type=shulker,limit=1,sort=nearest,tag=stellarity.end_city.pink_shulker] at @s run \
	summon minecraft:area_effect_cloud ~ ~ ~ {effects:[{id:"minecraft:regeneration",amplifier:5,duration:3}],Duration:2, ReapplicationDelay:0,WaitTime:-1,Age:-1}
