data modify storage fokastudio:end/temp "natures_wrath.spells" append value "hallow"

execute store result score #undead foka.misc if entity @e[type=#fokastudio:end/undead,distance=..9]
execute if score #undead foka.misc matches 3.. run data modify storage fokastudio:end/temp "natures_wrath.spells" append value "hallow"
execute if score #undead foka.misc matches 3.. run data modify storage fokastudio:end/temp "natures_wrath.spells" append value "hallow"
