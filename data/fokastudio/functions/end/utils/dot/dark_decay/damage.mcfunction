scoreboard players operation #damage foka.misc = @s foka.dot.dark_decay.damage

scoreboard players set #armor_penetration foka.misc 80

scoreboard players set #ignore_iframes foka.misc 1
scoreboard players set #ignore_resistance foka.misc 0
scoreboard players set #damage_type foka.misc 0
scoreboard players set #damage_effects foka.misc 0

scoreboard players reset @s foka.dot.dark_decay.progress

particle end_rod ~ ~1 ~ .3 .55 .3 0.01 7 force @a[distance=..32]
particle dust 0.3 0.3 0.3 1 ~ ~1 ~ .3 .55 .3 0.01 7 force @a[distance=..32]

playsound minecraft:entity.ender_eye.death neutral @a ~ ~ ~

# Damage cause
tag @s add foka.damage.dot.dark_decay

function fokastudio:end/utils/damage/calculate
