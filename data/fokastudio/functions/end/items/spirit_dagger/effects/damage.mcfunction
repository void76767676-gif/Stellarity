scoreboard players set #damage foka.misc 40
scoreboard players operation #damage foka.misc += #sweeping foka.misc

scoreboard players set #armor_penetration foka.misc 50
scoreboard players set #ignore_iframes foka.misc 1

tag @s add foka.damage.spirit_dagger

execute unless score #knockback foka.misc matches 0 run function fokastudio:end/items/spirit_dagger/effects/knockback/apply
execute unless score #fire_aspect foka.misc matches 0 run function fokastudio:end/items/spirit_dagger/effects/fire
execute unless score #bane foka.misc matches 0 if entity @s[type=#fokastudio:end/arthropods] run function fokastudio:end/items/spirit_dagger/effects/bane_of_spiders

function fokastudio:end/utils/damage/calculate
