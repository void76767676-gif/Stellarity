kill @s

loot spawn ~ ~ ~ loot fokastudio:end/items/perm_buffs/bloody_harvest
execute store result entity @e[type=item,limit=1,sort=nearest] Item.Count byte 1 run scoreboard players get #count foka.misc
tag @e[type=item,limit=1,sort=nearest] add foka.consecrate.ignore

function fokastudio:end/mechanics/consecration/sfx
