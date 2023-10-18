# Damage is set in 'spin/start'

scoreboard players set #armor_penetration stellarity.misc 50
scoreboard players set #ignore_iframes stellarity.misc 1
scoreboard players set #damage_boost_efficiency stellarity.misc 0

tag @s add stellarity.damage.prismember

tag @p[predicate=stellarity:items/holding_prismember,distance=0.001..] add stellarity.damage.attacker

function stellarity:utils/damage/start

# Prismatic Inferno
scoreboard players set #dot.damage stellarity.misc 15
scoreboard players set #dot.time stellarity.misc 60
scoreboard players set #dot.delay stellarity.misc 20

scoreboard players operation #dot.time stellarity.misc += #enchant stellarity.misc

scoreboard players set #19 stellarity.misc 19
scoreboard players operation #dot.time stellarity.misc += #19 stellarity.misc

function stellarity:utils/dot/prismatic_inferno/apply
