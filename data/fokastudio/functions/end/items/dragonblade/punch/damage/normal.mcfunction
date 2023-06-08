scoreboard players set #mul foka.misc 15
scoreboard players operation #enchant foka.misc *= #mul foka.misc

scoreboard players set #damage foka.misc 70
scoreboard players operation #damage foka.misc += #enchant foka.misc

scoreboard players set #armor_penetration foka.misc 33
scoreboard players set #ignore_iframes foka.misc 1
scoreboard players set #damage_effects foka.misc 0
scoreboard players set #damage_type foka.misc 3

tag @p[predicate=fokastudio:end/items/holding_dragonblade,predicate=fokastudio:end/utils/player/is_sneaking] add foka.damage.attacker
tag @s add foka.damage.dragonblade

function fokastudio:end/utils/damage/calculate
effect give @s slowness 1 6 true
effect give @s weakness 7 0 false
