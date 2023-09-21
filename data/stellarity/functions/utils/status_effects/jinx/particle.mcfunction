scoreboard players reset @s stellarity.status_effect.jinx.particle

execute at @s positioned ~ ~1.3 ~ run function stellarity:utils/particles/spawn_particle {speed:30,billboard:center,item:magenta_dye,despawn_value:33,state:spread,spread_initial:1,spread_radius:1.7,custommodeldata:90000,id:jinx}

execute if predicate stellarity:utils/chance/50percent run particle minecraft:end_rod ~ ~1.2 ~ 0 0 0 0.05 1
