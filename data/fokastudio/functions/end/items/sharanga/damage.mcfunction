scoreboard players operation #damage foka.misc = @e[type=spectral_arrow,limit=1,sort=nearest] foka.misc
scoreboard players set #armor_penetration foka.misc 20
scoreboard players set #ignore_iframes foka.misc 0

tag @s add foka.damage.sharanga_explosion

# Glowing
effect give @s glowing 10 0

tag @e[type=spectral_arrow,limit=1,sort=nearest] add foka.damage.attacker

function fokastudio:end/utils/damage/calculate
