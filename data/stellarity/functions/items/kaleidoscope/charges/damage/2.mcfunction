scoreboard players set #2 stellarity.misc 2
scoreboard players set #2s stellarity.misc 40
scoreboard players operation #fire stellarity.misc = #charge stellarity.misc
scoreboard players operation #fire stellarity.misc /= #2 stellarity.misc
scoreboard players operation #fire stellarity.misc += #2s stellarity.misc
execute store result entity @s Fire short 1 run scoreboard players get #fire stellarity.misc

scoreboard players set #damage stellarity.misc 40
scoreboard players operation #damage stellarity.misc += #charge stellarity.misc

scoreboard players set #armor_penetration stellarity.misc 25
scoreboard players set #ignore_iframes stellarity.misc 1

tag @p[predicate=stellarity:items/holding_kaleidoscope] add stellarity.damage.attacker

tag @s add stellarity.damage.kaleidoscope

function stellarity:utils/damage/start
