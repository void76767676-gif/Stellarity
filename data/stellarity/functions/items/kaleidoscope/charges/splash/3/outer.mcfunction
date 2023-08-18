scoreboard players set #fire stellarity.misc 33
execute store result entity @s Fire short 1 run scoreboard players get #fire stellarity.misc

# Base discharge damage: 23
scoreboard players set #damage stellarity.misc 69

scoreboard players set #armor_penetration stellarity.misc 35
scoreboard players set #ignore_iframes stellarity.misc 1
scoreboard players set #damage_boost_efficiency stellarity.misc 50

tag @s add stellarity.damage.kaleidoscope

tag @p[predicate=stellarity:items/holding_kaleidoscope] add stellarity.damage.attacker

function stellarity:utils/damage/start
