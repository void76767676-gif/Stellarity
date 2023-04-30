execute as @e[type=marker,limit=1,sort=nearest,tag=foka.natures_wrath.spirit] at @s run function fokastudio:end/items/spellbooks/natures_wrath/spirit/damage/as_marker/mountain

scoreboard players set #damage foka.misc 70

scoreboard players set #armor_penetration foka.misc 15
scoreboard players set #ignore_iframes foka.misc 1
scoreboard players set #ignore_resistance foka.misc 0
scoreboard players set #damage_type foka.misc 2
scoreboard players set #damage_effects foka.misc 4

tag @s add foka.damage.natures_wrath

tag @p[predicate=fokastudio:end/items/spellbooks/holding_natures_wrath] add foka.damage.attacker

function fokastudio:end/utils/damage/calculate
