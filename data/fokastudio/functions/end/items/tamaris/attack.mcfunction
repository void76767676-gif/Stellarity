advancement revoke @s only fokastudio:end/events/items/attack_with_tamaris

execute store result score #enchant foka.misc run data get entity @s SelectedItem.tag.Enchantments.[{id:"minecraft:vanishing_curse"}].lvl 10

scoreboard players set #dot.damage foka.misc 10
scoreboard players operation #dot.damage foka.misc += #enchant foka.misc

scoreboard players set #dot.time foka.misc 121

scoreboard players set #dot.delay foka.misc 30

execute as @e[type=!#fokastudio:end/invalid_targets,nbt={HurtTime:10s},limit=1,sort=nearest] run function fokastudio:end/utils/dot/dark_decay/apply
