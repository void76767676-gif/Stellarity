execute as @e[type=marker,limit=1,sort=nearest,tag=foka.natures_wrath.spirit] at @s run function fokastudio:end/items/spellbooks/natures_wrath/spirit/damage/as_marker/snow

scoreboard players set #damage foka.misc 40

scoreboard players set #armor_penetration foka.misc 0
scoreboard players set #ignore_iframes foka.misc 1
scoreboard players set #ignore_resistance foka.misc 0
scoreboard players set #damage_type foka.misc 2
scoreboard players set #damage_effects foka.misc 4

tag @s add foka.damage.natures_wrath

effect give @s slowness 7 0 false
effect give @s weakness 3 0 false

scoreboard players set #dot.damage foka.misc 20
scoreboard players set #dot.delay foka.misc 20

execute if predicate fokastudio:end/utils/chance/66percent run function fokastudio:end/utils/dot/frostburn/apply

tag @p[predicate=fokastudio:end/items/spellbooks/holding_natures_wrath] add foka.damage.attacker

function fokastudio:end/utils/damage/calculate
