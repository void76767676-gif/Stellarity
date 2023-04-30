data modify storage fokastudio:end/temp "natures_wrath.spells" append value "mountains"

execute store result score #mob_count foka.misc if entity @e[type=!#fokastudio:end/invalid_targets_with_player,distance=10..25]
execute if score #mob_count foka.misc matches 1.. run data modify storage fokastudio:end/temp "natures_wrath.spells" append value "mountains"
execute if score #mob_count foka.misc matches 1.. run data modify storage fokastudio:end/temp "natures_wrath.spells" append value "mountains"
execute if score #mob_count foka.misc matches 1.. run data modify storage fokastudio:end/temp "natures_wrath.spells" append value "mountains"
