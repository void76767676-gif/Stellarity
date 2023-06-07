scoreboard players set #mul foka.misc 15
scoreboard players operation #enchant_splash foka.misc = #enchant foka.misc
scoreboard players operation #enchant_splash foka.misc *= #mul foka.misc

scoreboard players set #damage foka.misc 40
scoreboard players operation #damage foka.misc += #enchant_splash foka.misc

scoreboard players set #armor_penetration foka.misc 33
scoreboard players set #ignore_iframes foka.misc 1
scoreboard players set #damage_effects foka.misc 0

tag @s add foka.damage.dragonblade
tag @p[predicate=fokastudio:end/items/holding_dragonblade,predicate=fokastudio:end/utils/player/is_sneaking] add foka.damage.attacker

function fokastudio:end/utils/damage/calculate
effect give @s weakness 3 0 false
