execute if score #hit foka.misc matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=!#fokastudio:end/invalid_targets_with_player,tag=!foka.prismatic_blast.pierced,dx=0,sort=nearest] run function fokastudio:end/items/prismatic_punch/detonate/piercing/check_hit_entity
scoreboard players add #distance foka.misc 1
execute if score #hit foka.misc matches 0 if score #distance foka.misc matches ..200 positioned ^ ^ ^0.1 run function fokastudio:end/items/prismatic_punch/detonate/piercing/ray

scoreboard players add #particles foka.misc 1

execute if score #particles foka.misc matches 0..4 run particle dust 0.98 0.243 0.243 0.54 ~ ~ ~ 0.08 0.08 0.08 0 7 force
execute if score #particles foka.misc matches 5..8 run particle dust 0.98 0.686 0.243 0.54 ~ ~ ~ 0.08 0.08 0.08 0 7 force
execute if score #particles foka.misc matches 9..12 run particle dust 0.98 0.871 0.243 0.54 ~ ~ ~ 0.08 0.08 0.08 0 7 force
execute if score #particles foka.misc matches 13..16 run particle dust 0.6 0.98 0.243 0.54 ~ ~ ~ 0.08 0.08 0.08 0 7 force
execute if score #particles foka.misc matches 17..20 run particle dust 0.243 0.894 0.98 0.54 ~ ~ ~ 0.08 0.08 0.08 0 7 force
execute if score #particles foka.misc matches 21..24 run particle dust 0.318 0.243 0.98 0.54 ~ ~ ~ 0.08 0.08 0.08 0 7 force
execute if score #particles foka.misc matches 25..28 run particle dust 0.98 0.243 0.918 0.54 ~ ~ ~ 0.08 0.08 0.08 0 7 force
execute if score #particles foka.misc matches 29..32 run particle dust 0.647 0.243 0.98 0.54 ~ ~ ~ 0.08 0.08 0.08 0 7 force

execute if score #particles foka.misc matches 32 run scoreboard players reset #particles foka.misc