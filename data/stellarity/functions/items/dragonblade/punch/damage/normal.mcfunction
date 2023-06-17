scoreboard players set #mul stellarity.misc 15
scoreboard players operation #enchant stellarity.misc *= #mul stellarity.misc

scoreboard players set #damage stellarity.misc 70
scoreboard players operation #damage stellarity.misc += #enchant stellarity.misc

scoreboard players set #armor_penetration stellarity.misc 33
scoreboard players set #ignore_iframes stellarity.misc 1
scoreboard players set #damage_effects stellarity.misc 0
scoreboard players set #damage_type stellarity.misc 3

tag @p[predicate=stellarity:items/holding_dragonblade,predicate=stellarity:utils/player/is_sneaking] add stellarity.damage.attacker
tag @s add stellarity.damage.dragonblade

function stellarity:utils/damage/calculate
effect give @s slowness 1 6 true
effect give @s weakness 7 0 false
