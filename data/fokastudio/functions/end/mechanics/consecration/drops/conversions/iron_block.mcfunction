kill @s

loot spawn ~ ~ ~ loot fokastudio:end/items/materials/hallowed_ingot

execute if score #count foka.misc matches 1..63 store result entity @e[type=item,limit=1,sort=nearest] Item.Count byte 2 run scoreboard players get #count foka.misc
execute if score #count foka.misc matches 64 run scoreboard players set #count2 foka.misc 126
execute if score #count foka.misc matches 64 store result entity @e[type=item,limit=1,sort=nearest] Item.Count byte 1 run scoreboard players get #count2 foka.misc

execute if score #count foka.misc matches 64 run loot spawn ~ ~ ~ loot fokastudio:end/items/materials/hallowed_ingot
execute if score #count foka.misc matches 64 run loot spawn ~ ~ ~ loot fokastudio:end/items/materials/hallowed_ingot

execute if score #count foka.misc matches ..63 run tag @e[type=item,limit=1,sort=nearest] add foka.consecration.ignore
execute if score #count foka.misc matches 64 run tag @e[type=item,limit=2,sort=nearest] add foka.consecration.ignore

function fokastudio:end/mechanics/consecration/sfx
