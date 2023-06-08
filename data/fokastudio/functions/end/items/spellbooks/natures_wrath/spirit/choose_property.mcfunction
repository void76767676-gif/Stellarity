execute rotated as @p run tp @s ^ ^ ^ ~ ~
tag @s add foka.natures_wrath.spirit

scoreboard players operation @s foka.misc2 = #upgrades foka.misc

data remove storage fokastudio:end/temp "natures_wrath.spells"
data remove storage fokastudio:end/temp "natures_wrath.chosen"

execute unless score #upgrades foka.misc matches 1.. run data modify storage fokastudio:end/temp "natures_wrath.chosen" set value "normal"
execute if score #upgrades foka.misc matches 1..6 if predicate fokastudio:end/utils/chance/50percent run data modify storage fokastudio:end/temp "natures_wrath.chosen" set value "normal"
execute if score #upgrades foka.misc matches 7.. if predicate fokastudio:end/utils/chance/33percent run data modify storage fokastudio:end/temp "natures_wrath.chosen" set value "normal"
execute if data storage fokastudio:end/temp {natures_wrath.chosen:"normal"} run tag @s add foka.natures_wrath.spirit.normal

execute unless data storage fokastudio:end/temp {natures_wrath.chosen:"normal"} run function fokastudio:end/items/spellbooks/natures_wrath/spirit/if_not_default
