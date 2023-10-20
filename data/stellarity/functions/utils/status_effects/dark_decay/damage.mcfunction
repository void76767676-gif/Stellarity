scoreboard players operation #damage kohara.misc = @s stellarity.dot.dark_decay.damage

scoreboard players reset @s stellarity.dot.dark_decay.progress

particle end_rod ~ ~1 ~ .3 .55 .3 0.01 7 force @a[distance=..32]
particle dust 0.3 0.3 0.3 1 ~ ~1 ~ .3 .55 .3 0.01 7 force @a[distance=..32]

playsound minecraft:entity.ender_eye.death neutral @a ~ ~ ~

function kohara:damage/calculate {armor_penetration:60,damage_boost_efficiency:0,damage_type:"stellarity:dot/dark_decay",tag:"stellarity.damage.dot.dark_decay"}
