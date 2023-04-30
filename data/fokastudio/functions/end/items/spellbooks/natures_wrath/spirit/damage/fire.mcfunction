execute as @e[type=marker,limit=1,sort=nearest,tag=foka.natures_wrath.spirit] at @s run function fokastudio:end/items/spellbooks/natures_wrath/spirit/damage/as_marker/fire

scoreboard players set #damage foka.misc 50

scoreboard players set #armor_penetration foka.misc 0
scoreboard players set #ignore_iframes foka.misc 1
scoreboard players set #ignore_resistance foka.misc 0
scoreboard players set #damage_type foka.misc 2
scoreboard players set #damage_effects foka.misc 4

execute store result entity @s Fire short 1 run scoreboard players get #fire foka.misc

tag @s add foka.damage.natures_wrath

tag @p[predicate=fokastudio:end/items/spellbooks/holding_natures_wrath] add foka.damage.attacker

function fokastudio:end/utils/damage/calculate

