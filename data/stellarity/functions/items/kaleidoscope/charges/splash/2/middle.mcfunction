## Fire
# Half the duration
scoreboard players set #2 stellarity.misc 2
scoreboard players set #2s stellarity.misc 60
scoreboard players operation #fire stellarity.misc = #charge stellarity.misc
scoreboard players operation #fire stellarity.misc /= #2 stellarity.misc
scoreboard players operation #fire stellarity.misc += #2s stellarity.misc
scoreboard players operation #fire stellarity.misc /= #2 stellarity.misc
execute store result entity @s Fire short 1 run scoreboard players get #fire stellarity.misc

## Damage
scoreboard players set #damage stellarity.misc 40
scoreboard players operation #damage stellarity.misc += #charge stellarity.misc

scoreboard players set #2 stellarity.misc 2
scoreboard players operation #damage stellarity.misc /= #2 stellarity.misc

scoreboard players set #armor_penetration stellarity.misc 25
scoreboard players set #ignore_iframes stellarity.misc 1

tag @s add stellarity.damage.kaleidoscope

tag @p[predicate=stellarity:items/holding_kaleidoscope] add stellarity.damage.attacker

function stellarity:utils/damage/start
