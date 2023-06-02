particle explosion ~ ~ ~

tag @s add foka.natures_wrath.spirit_wolf

execute if score #upgrades foka.misc matches ..1 run function fokastudio:end/items/spellbooks/natures_wrath/wolves/levels/5
execute if score #upgrades foka.misc matches 2..3 run function fokastudio:end/items/spellbooks/natures_wrath/wolves/levels/2
execute if score #upgrades foka.misc matches 4..6 run function fokastudio:end/items/spellbooks/natures_wrath/wolves/levels/3
execute if score #upgrades foka.misc matches 7..8 run function fokastudio:end/items/spellbooks/natures_wrath/wolves/levels/4
execute if score #upgrades foka.misc matches 9.. run function fokastudio:end/items/spellbooks/natures_wrath/wolves/levels/5

attribute @s generic.follow_range base set 24

data modify entity @s CollarColor set value 3b

execute store result entity @s Health float 1 run scoreboard players get #hp foka.misc

data modify entity @s CustomName set value '{"translate":"foka.items.spellbooks.natures_wrath.spirit_wolf","fallback":"Spirit Wolf","color":"aqua"}'
execute if predicate fokastudio:end/utils/chance/5percent run data modify entity @s CustomName set value '{"text":"Bluey","color":"blue"}'

data modify entity @s Owner set from entity @p[predicate=fokastudio:end/items/spellbooks/holding_natures_wrath] UUID
