scoreboard players set #2 stellarity.misc 2
scoreboard players set #1s stellarity.misc 20
scoreboard players operation #fire stellarity.misc = #charge stellarity.misc
scoreboard players operation #fire stellarity.misc /= #2 stellarity.misc
scoreboard players operation #fire stellarity.misc += #1s stellarity.misc
execute store result entity @s Fire short 1 run scoreboard players get #fire stellarity.misc

scoreboard players operation #damage stellarity.misc = #charge stellarity.misc

scoreboard players set #armor_penetration stellarity.misc 15
scoreboard players set #ignore_iframes stellarity.misc 1
scoreboard players set #damage_boost_efficiency stellarity.misc 50

tag @p[predicate=stellarity:items/holding_kaleidoscope] add stellarity.damage.attacker

tag @s add stellarity.damage.kaleidoscope

function stellarity:utils/damage/start
