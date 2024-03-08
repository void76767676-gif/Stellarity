particle end_rod ~ ~0.1 ~ 0 0 0 0.05 15 force @a[distance=..128]

execute store result score #shrapnel_count stellarity.misc run random value 6..13
function stellarity:items/call_of_the_void/shrapnel/spawn_loop

kill @s[type=#arrows]
