scoreboard players set #fire stellarity.misc 110
execute store result entity @s Fire short 1 run scoreboard players get #fire stellarity.misc

scoreboard players set #damage stellarity.misc 230

scoreboard players set #armor_penetration stellarity.misc 35
scoreboard players set #ignore_iframes stellarity.misc 1

tag @p[predicate=stellarity:items/holding_kaleidoscope] add stellarity.damage.attacker

tag @s add stellarity.damage.kaleidoscope

function stellarity:utils/damage/start
