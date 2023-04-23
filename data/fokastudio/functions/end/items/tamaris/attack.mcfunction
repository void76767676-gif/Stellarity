advancement revoke @s only fokastudio:end/events/items/attack_with_tamaris

execute store result score #enchant foka.misc run data get entity @s SelectedItem.tag.Enchantments.[{id:"minecraft:vanishing_curse"}].lvl 10

scoreboard players set #dot.damage foka.misc 30
scoreboard players operation #dot.damage foka.misc += #enchant foka.misc

scoreboard players set #dot.time foka.misc 161
scoreboard players set #extra foka.misc 3
scoreboard players operation #extra foka.misc *= #enchant foka.misc
scoreboard players operation #dot.time foka.misc += #extra foka.misc

scoreboard players set #dot.delay foka.misc 40

execute as @e[type=!#fokastudio:end/invalid_targets,nbt={HurtTime:10s},limit=1,sort=nearest] run function fokastudio:end/utils/dot/dark_decay/apply
