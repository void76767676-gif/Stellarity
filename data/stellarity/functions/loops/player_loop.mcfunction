## Items
function stellarity:items/main_player

## Advancements
function stellarity:advancements/main

# Totem of Undying gives Levitation when falling out of the world
execute if entity @s[predicate=kohara:holding_a_totem,predicate=stellarity:utils/in_void] run function stellarity:mechanics/void_totem_protection/save

scoreboard players add @s stellarity.misc.loop.2t 1
execute if entity @s[scores={stellarity.misc.loop.2t=2}] run function stellarity:loops/player_loop_2t

scoreboard players add @s stellarity.misc.loop.3t 1
execute if entity @s[scores={stellarity.misc.loop.3t=3}] run function stellarity:loops/player_loop_3t

scoreboard players add @s stellarity.misc.loop.5t 1
execute if entity @s[scores={stellarity.misc.loop.5t=5}] run function stellarity:loops/player_loop_5t

scoreboard players add @s stellarity.misc.loop.1s 1
execute if entity @s[scores={stellarity.misc.loop.1s=20}] run function stellarity:loops/player_loop_1s

scoreboard players add @s stellarity.misc.loop.10s 1
execute if entity @s[scores={stellarity.misc.loop.10s=200}] run function stellarity:loops/player_loop_10s
