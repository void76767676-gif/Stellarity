## Fire
scoreboard players set #2 stellarity.misc 2
scoreboard players set #2s stellarity.misc 60
scoreboard players operation #fire stellarity.misc = #charge stellarity.misc
scoreboard players operation #fire stellarity.misc /= #2 stellarity.misc
scoreboard players operation #fire stellarity.misc += #2s stellarity.misc

# 70% of fire duration
scoreboard players operation #temp stellarity.misc = #fire stellarity.misc
scoreboard players operation #temp stellarity.misc *= #100 stellarity.misc

scoreboard players set #temp2 stellarity.misc 30
scoreboard players operation #temp2 stellarity.misc *= #fire stellarity.misc

scoreboard players operation #temp stellarity.misc -= #temp2 stellarity.misc

scoreboard players operation #temp stellarity.misc /= #100 stellarity.misc
scoreboard players operation #fire stellarity.misc = #temp stellarity.misc

execute store result entity @s Fire short 1 run scoreboard players get #fire stellarity.misc


## Damage
scoreboard players set #damage stellarity.misc 40
scoreboard players operation #damage stellarity.misc += #charge stellarity.misc
scoreboard players set #100 stellarity.misc 100

# 70% of discharge damage
scoreboard players operation #temp stellarity.misc = #damage stellarity.misc
scoreboard players operation #temp stellarity.misc *= #100 stellarity.misc

scoreboard players set #temp2 stellarity.misc 30
scoreboard players operation #temp2 stellarity.misc *= #damage stellarity.misc

scoreboard players operation #temp stellarity.misc -= #temp2 stellarity.misc

scoreboard players operation #temp stellarity.misc /= #100 stellarity.misc
scoreboard players operation #damage stellarity.misc = #temp stellarity.misc

scoreboard players set #armor_penetration stellarity.misc 25
scoreboard players set #ignore_iframes stellarity.misc 1
scoreboard players set #damage_boost_efficiency stellarity.misc 40

tag @s add stellarity.damage.kaleidoscope

tag @p[predicate=stellarity:items/holding_kaleidoscope] add stellarity.damage.attacker

function stellarity:utils/damage/start
