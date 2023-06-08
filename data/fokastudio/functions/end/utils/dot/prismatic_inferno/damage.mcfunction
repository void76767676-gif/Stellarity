scoreboard players operation #damage foka.misc = @s foka.dot.prismatic_inferno.damage

scoreboard players set #armor_penetration foka.misc 30

scoreboard players set #ignore_iframes foka.misc 1
scoreboard players set #ignore_resistance foka.misc 0
scoreboard players set #damage_type foka.misc 1
scoreboard players set #damage_effects foka.misc 3

scoreboard players reset @s foka.dot.prismatic_inferno.progress

particle dust 0.98 0.243 0.243 1.4 ~ ~1 ~ .3 .55 .3 0 3 force @a[distance=..32]
particle dust 0.98 0.686 0.243 1.4 ~ ~1 ~ .3 .55 .3 0 3 force @a[distance=..32]
particle dust 0.98 0.871 0.243 1.4 ~ ~1 ~ .3 .55 .3 0 3 force @a[distance=..32]
particle dust 0.6 0.98 0.243 1.4 ~ ~1 ~ .3 .55 .3 0 3 force @a[distance=..32]
particle dust 0.243 0.894 0.98 1.4 ~ ~1 ~ .3 .55 .3 0 3 force @a[distance=..32]
particle dust 0.318 0.243 0.98 1.4 ~ ~1 ~ .3 .55 .3 0 3 force @a[distance=..32]
particle dust 0.98 0.243 0.918 1.4 ~ ~1 ~ .3 .55 .3 0 3 force @a[distance=..32]
particle dust 0.647 0.243 0.98 1.4 ~ ~1 ~ .3 .55 .3 0 3 force @a[distance=..32]

particle minecraft:flame ~ ~1 ~ .3 .55 .3 0.01 10 force @a[distance=..32]

playsound minecraft:block.amethyst_cluster.break neutral @a ~ ~ ~


# Damage cause
tag @s add foka.damage.dot.prismatic_inferno

function fokastudio:end/utils/damage/calculate
