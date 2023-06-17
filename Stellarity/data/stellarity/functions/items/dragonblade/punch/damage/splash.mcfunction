scoreboard players set #mul stellarity.misc 15
scoreboard players operation #enchant_splash stellarity.misc = #enchant stellarity.misc
scoreboard players operation #enchant_splash stellarity.misc *= #mul stellarity.misc

scoreboard players set #damage stellarity.misc 40
scoreboard players operation #damage stellarity.misc += #enchant_splash stellarity.misc

scoreboard players set #armor_penetration stellarity.misc 33
scoreboard players set #ignore_iframes stellarity.misc 1
scoreboard players set #damage_effects stellarity.misc 0
scoreboard players set #damage_type stellarity.misc 3

tag @s add stellarity.damage.dragonblade
tag @p[predicate=stellarity:items/holding_dragonblade,predicate=stellarity:utils/player/is_sneaking] add stellarity.damage.attacker

function stellarity:utils/damage/calculate
effect give @s weakness 3 0 false
