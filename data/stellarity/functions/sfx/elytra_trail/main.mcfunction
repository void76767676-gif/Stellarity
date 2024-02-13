# Ticked from 'loops/player_main'

particle firework ^-1.4 ^0.6 ^0.45 0 0 0 0 1 force @a
particle firework ^1.4 ^0.6 ^0.45 0 0 0 0 1 force @a

execute if score @s kohara.flight_speed matches 380.. run particle minecraft:flame ^-1.3 ^0.6 ^0.45 0.1 0.1 0.1 0 2
execute if score @s kohara.flight_speed matches 380.. run particle minecraft:flame ^1.3 ^0.6 ^0.45 0.1 0.1 0.1 0 2

execute if score @s kohara.flight_speed matches 450.. run particle minecraft:flame ^ ^0.3 ^-1 0.5 0.5 0.5 0 8
