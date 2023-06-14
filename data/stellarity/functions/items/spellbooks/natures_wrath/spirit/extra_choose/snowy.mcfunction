data modify storage stellarity:temp "natures_wrath.spells" append value "mountains"

execute store result score #mob_count stellarity.misc if entity @e[type=!#stellarity:invalid_targets_with_player,distance=10..25]
execute if score #mob_count stellarity.misc matches 1.. run data modify storage stellarity:temp "natures_wrath.spells" append value "mountains"
execute if score #mob_count stellarity.misc matches 1.. run data modify storage stellarity:temp "natures_wrath.spells" append value "mountains"
execute if score #mob_count stellarity.misc matches 1.. run data modify storage stellarity:temp "natures_wrath.spells" append value "mountains"
