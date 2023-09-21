##Spawn settings


$data merge entity @s {Tags:["custom_particle","stellarity.particle.$(id)",$(state)],billboard:"$(billboard)",item:{id:"minecraft:$(item)",Count:1b,tag:{CustomModelData:$(custommodeldata)}},transformation:{translation:[0f,-0.3f,0f],left_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f],right_rotation:[0f,0f,0f,1f]}}

#execute store result score @s[tag=!spawned,tag=!falling,tag=!floating] stellarity.custom_particle.spread.pos run data get entity @s Pos[1] 1

$data merge entity @s[tag=!spawned] {teleport_duration:$(speed)}

$scoreboard players set @s[tag=!spawned] stellarity.custom_particle.despawn $(despawn_value)

# Better spread implementation
# Definitely less efficient in terms of performance, but it allows for both XZ and Y spread
execute store result score #rotation1 stellarity.misc run random value 0..360
execute store result score #rotation2 stellarity.misc run random value -45..45
execute store result storage stellarity:temp particles.rotation1 int 1 run scoreboard players get #rotation1 stellarity.misc
execute store result storage stellarity:temp particles.rotation2 int 1 run scoreboard players get #rotation2 stellarity.misc

# To enlarged int and back into the storage
$data modify storage stellarity:temp particles.spread.min set value $(spread_initial)d
$data modify storage stellarity:temp particles.spread.max set value $(spread_radius)d
execute store result score #spread.min stellarity.misc run data get storage stellarity:temp particles.spread.min 100000
execute store result score #spread.max stellarity.misc run data get storage stellarity:temp particles.spread.max 100000
execute store result storage stellarity:temp particles.spread.min int 1 run scoreboard players get #spread.min stellarity.misc
execute store result storage stellarity:temp particles.spread.max int 1 run scoreboard players get #spread.max stellarity.misc

function stellarity:utils/particles/settings/roll with storage stellarity:temp particles.spread
function stellarity:utils/particles/settings/rotate_teleport with storage stellarity:temp particles

scoreboard players set @s[tag=!spread,tag=!spawned] stellarity.custom_particle.display 0
scoreboard players set @s[tag=spread,tag=!spawned] stellarity.custom_particle.display 5

tag @s add spawned

#execute store result entity @s[tag=spawned,tag=!falling,tag=!floating] Pos[1] double 1 run scoreboard players get @s stellarity.custom_particle.spread.pos
scoreboard players set @s[tag=falling] stellarity.custom_particle.spread.pos 0

execute if entity @s[tag=stellarity.particle.jinx] run function stellarity:utils/particles/settings/extra/jinx/spawn
