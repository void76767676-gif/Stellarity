scoreboard players set #damage kohara.misc 50
scoreboard players operation #damage kohara.misc += #sweeping stellarity.misc

tag @p add kohara.attacker

scoreboard players set #base stellarity.misc 30
scoreboard players set #10 stellarity.misc 10
scoreboard players operation #add stellarity.misc = #bane stellarity.misc
scoreboard players operation #add stellarity.misc *= #10 stellarity.misc
scoreboard players operation #base stellarity.misc += #add stellarity.misc

execute store result storage stellarity:temp spirit_dagger.bane int 1 run scoreboard players get #base stellarity.misc

execute unless score #knockback stellarity.misc matches 0 run function stellarity:items/spirit_dagger/effects/knockback/apply
execute unless score #fire_aspect stellarity.misc matches 0 run function stellarity:items/spirit_dagger/effects/fire
execute unless score #bane stellarity.misc matches 0 if entity @s[type=#kohara:arthropods] at @s run function stellarity:items/spirit_dagger/effects/bane_of_spiders with storage stellarity:temp spirit_dagger

function kohara:damage/calculate {armor_penetration:100,damage_boost_efficiency:60,damage_type:"kohara:armor_piercing",tag:"stellarity.damage.spirit_dagger"}
