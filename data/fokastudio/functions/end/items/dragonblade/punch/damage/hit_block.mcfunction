scoreboard players set #mul foka.misc 40
scoreboard players operation #enchant foka.misc *= #mul foka.misc

scoreboard players set #damage foka.misc 240
scoreboard players operation #damage foka.misc += #enchant foka.misc

scoreboard players set #armor_penetration foka.misc 33
scoreboard players set #ignore_iframes foka.misc 0
scoreboard players set #damage_effects foka.misc 0

tag @s add foka.damage.dragonblade
tag @p[predicate=fokastudio:end/items/holding_dragonblade,predicate=fokastudio:end/utils/player/is_sneaking] add foka.damage.attacker

execute if score #damage foka.misc matches 320.. run advancement grant @p[predicate=fokastudio:end/items/holding_dragonblade,predicate=fokastudio:end/utils/player/is_sneaking] only fokastudio:end/aota/kaliyah

function fokastudio:end/utils/damage/calculate
effect give @s slowness 2 6 true
effect give @s weakness 11 0 false
