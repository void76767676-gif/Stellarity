kill @s

summon item ~ ~ ~ {Item:{id:"soul_campfire",Count:1b},Motion:[0d,0.1d,0d]}
execute store result entity @e[type=item,limit=1,sort=nearest] Item.Count byte 1 run scoreboard players get #count foka.misc
tag @e[type=item,limit=1,sort=nearest] add foka.consecration.ignore

function fokastudio:end/mechanics/consecration/sfx
