scoreboard players operation #damage stellarity.misc = @s stellarity.dot.leeching.damage

scoreboard players set #armor_penetration stellarity.misc 50
scoreboard players set #ignore_iframes stellarity.misc 1

scoreboard players reset @s stellarity.dot.leeching.damage

# Damage cause
tag @s add stellarity.damage.dot.leeching

execute anchored eyes rotated ~ 0 run particle firework ^ ^-0.5 ^ 0 0 0 0.08 17 force @a[distance=..32]

playsound minecraft:block.amethyst_cluster.break player @a[distance=0..] ~ ~ ~ 1 0
playsound minecraft:block.amethyst_cluster.break player @a[distance=0..] ~ ~ ~ 1 1
playsound minecraft:item.trident.return player @a[distance=0..] ~ ~ ~ 1 0.7

function stellarity:utils/damage/start
