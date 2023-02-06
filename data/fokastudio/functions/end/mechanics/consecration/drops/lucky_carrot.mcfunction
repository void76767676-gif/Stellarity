kill @s

loot spawn ~ ~ ~ loot fokastudio:end/items/perm_buffs/lucky_carrot

execute store result entity @e[type=item,limit=1,sort=nearest] Item.Count byte 1 run scoreboard players get #count foka.misc

function fokastudio:end/mechanics/consecration/sfx
