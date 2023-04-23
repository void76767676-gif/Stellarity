scoreboard players operation #damage foka.misc = @s foka.dot.frostburn.damage

scoreboard players set #armor_penetration foka.misc 0

scoreboard players set #ignore_iframes foka.misc 1
scoreboard players set #ignore_resistance foka.misc 0
scoreboard players set #damage_type foka.misc 0
scoreboard players set #damage_effects foka.misc 3

scoreboard players reset @s foka.dot.frostburn.progress

particle minecraft:soul_fire_flame ~ ~1 ~ .3 .55 .3 0.01 10 force @a[distance=..32]

# Damage cause
tag @s add foka.damage.dot.frostburn

function fokastudio:end/utils/damage/calculate
