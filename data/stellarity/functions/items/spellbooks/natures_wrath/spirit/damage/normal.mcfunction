execute as @e[type=marker,limit=1,sort=nearest,tag=stellarity.natures_wrath.spirit] at @s run function stellarity:items/spellbooks/natures_wrath/spirit/damage/as_marker/normal

execute if score #upgr stellarity.misc matches 0 run scoreboard players set #damage stellarity.misc 50
execute if score #upgr stellarity.misc matches 1 run scoreboard players set #damage stellarity.misc 60

scoreboard players set #armor_penetration stellarity.misc 15
scoreboard players set #ignore_iframes stellarity.misc 1
scoreboard players set #ignore_resistance stellarity.misc 0
scoreboard players set #damage_type stellarity.misc 2
scoreboard players set #damage_effects stellarity.misc 4

tag @s add stellarity.damage.natures_wrath

tag @p[predicate=stellarity:items/spellbooks/holding_natures_wrath] add stellarity.damage.attacker

function stellarity:utils/damage/calculate
