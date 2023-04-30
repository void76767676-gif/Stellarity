execute as @e[type=marker,limit=1,sort=nearest,tag=foka.natures_wrath.spirit] at @s run function fokastudio:end/items/spellbooks/natures_wrath/spirit/damage/as_marker/sculk

scoreboard players set #damage foka.misc 110

scoreboard players set #armor_penetration foka.misc 15
scoreboard players set #ignore_iframes foka.misc 1
scoreboard players set #ignore_resistance foka.misc 0
scoreboard players set #damage_type foka.misc 2
scoreboard players set #damage_effects foka.misc 4

tag @s add foka.damage.natures_wrath

tag @p[predicate=fokastudio:end/items/spellbooks/holding_natures_wrath] add foka.damage.attacker

function fokastudio:end/utils/damage/calculate

# Splash damage
scoreboard players set #damage foka.misc 90

scoreboard players set #armor_penetration foka.misc 15
scoreboard players set #ignore_iframes foka.misc 1
scoreboard players set #ignore_resistance foka.misc 0
scoreboard players set #damage_type foka.misc 2
scoreboard players set #damage_effects foka.misc 4

execute at @s run tag @e[type=!#fokastudio:end/invalid_targets,distance=0.01..2.11] add foka.damage.natures_wrath

tag @p[predicate=fokastudio:end/items/spellbooks/holding_natures_wrath] add foka.damage.attacker

execute at @s as @e[type=!#fokastudio:end/invalid_targets,distance=0.01..2.11] run function fokastudio:end/utils/damage/calculate
