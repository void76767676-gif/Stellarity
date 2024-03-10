scoreboard players set #damage kohara.misc 90
scoreboard players operation #damage kohara.misc += #extra_damage stellarity.misc

tag @p[predicate=stellarity:items/holding/slayer_crossbow] add kohara.attacker

effect give @s slowness 1 6 true
effect give @s weakness 7 0 false

function kohara:damage/calculate {armor_penetration:15,damage_boost_efficiency:0,damage_type:"minecraft:arrow",tag:"stellarity.damage.slayer_crossbow"}

tag @s add laser
