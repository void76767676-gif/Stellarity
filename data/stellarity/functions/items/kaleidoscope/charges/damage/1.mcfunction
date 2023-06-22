scoreboard players set #damage stellarity.misc 20
scoreboard players operation #damage stellarity.misc += #charge stellarity.misc

scoreboard players set #armor_penetration stellarity.misc 0
scoreboard players set #ignore_iframes stellarity.misc 1
scoreboard players set #ignore_resistance stellarity.misc 0
scoreboard players set #damage_type stellarity.misc 1
scoreboard players set #damage_effects stellarity.misc 1

tag @p[predicate=stellarity:items/holding_kaleidoscope] add stellarity.damage.attacker

function stellarity:utils/damage/calculate
