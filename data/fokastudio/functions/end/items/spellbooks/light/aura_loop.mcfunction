tp @s ~ ~ ~ ~2 ~

particle end_rod ^ ^ ^3.5 0 0 0 0 1 normal
particle dust 1 0.867 0 1 ^ ^ ^3.5 0 0 0 0 2 force @a[distance=..32]

particle end_rod ^ ^ ^-3.5 0 0 0 0 1 normal
particle dust 1 0.867 0 1 ^ ^ ^-3.5 0 0 0 0 2 force @a[distance=..32]

particle end_rod ^3.5 ^ ^ 0 0 0 0 1 normal
particle dust 1 0.867 0 1 ^3.5 ^ ^ 0 0 0 0 2 force @a[distance=..32]

particle end_rod ^-3.5 ^ ^ 0 0 0 0 1 normal
particle dust 1 0.867 0 1 ^-3.5 ^ ^ 0 0 0 0 2 force @a[distance=..32]

execute as @e[type=marker,limit=1,sort=nearest,tag=foka.book_of_light.aura_2] at @s run function fokastudio:end/items/spellbooks/light/aura_secondary_loop

scoreboard players add @s foka.misc 1
execute if score @s foka.misc matches 201.. run kill @e[type=marker,limit=2,sort=nearest,tag=foka.book_of_light]
