$execute as @e[type=item,distance=..2.5,tag=stellarity.altar.need_orbit,limit=1] at @s run tp @s ^ ^$(height) ^$(radius)
tag @e[type=item,distance=..2.5,tag=stellarity.altar.need_orbit,limit=1] remove stellarity.altar.need_orbit
$execute rotated ~-$(base) ~ if entity @e[type=item,distance=..2.5,tag=stellarity.altar.need_orbit] run function stellarity:mechanic/altar_common/orbit_step with storage stellarity:temp altar.angle
