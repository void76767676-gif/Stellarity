advancement revoke @s only fokastudio:end/events/items/shoot_clockwork_crossbow

execute anchored eyes positioned ^ ^ ^ as @e[type=arrow,limit=3,sort=nearest,distance=..1,tag=!foka.aware] run data merge entity @s {damage:1.25d,pickup:2b}

playsound minecraft:block.anvil.place player @a ~ ~ ~ 0.25 1.11
