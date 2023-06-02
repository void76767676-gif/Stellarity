execute positioned ~ ~ ~0.5 run summon wolf ~ ~ ~ {Tags:["foka.spirit_wolf"]}
execute positioned ~ ~ ~-0.5 run summon wolf ~ ~ ~ {Tags:["foka.spirit_wolf"]}
execute if score #upgrades foka.misc matches 3.. positioned ~-0.5 ~ ~ run summon wolf ~ ~ ~ {Tags:["foka.spirit_wolf"]}
execute if score #upgrades foka.misc matches 6.. positioned ~0.5 ~ ~ run summon wolf ~ ~ ~ {Tags:["foka.spirit_wolf"]}
execute if score #upgrades foka.misc matches 9.. positioned ~ ~ ~ run summon wolf ~ ~ ~ {Tags:["foka.spirit_wolf"]}

execute as @e[type=wolf,sort=nearest,tag=foka.spirit_wolf,distance=..1] at @s run function fokastudio:end/items/spellbooks/natures_wrath/wolves/edit_wolf_nbt
