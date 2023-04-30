data modify storage fokastudio:end/temp "natures_wrath.spells" append value "sculk"

execute store result score #mob_count foka.misc if entity @e[type=!#fokastudio:end/invalid_targets_with_player,distance=..9]
execute if score #mob_count foka.misc matches 5.. run data modify storage fokastudio:end/temp "natures_wrath.spells" append value "sculk"
execute if score #mob_count foka.misc matches 5.. run data modify storage fokastudio:end/temp "natures_wrath.spells" append value "sculk"
