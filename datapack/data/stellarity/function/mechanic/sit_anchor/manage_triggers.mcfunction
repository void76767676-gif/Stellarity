# Manage interaction triggers within 4 blocks of the Respawn Anchor

# If an unseated player is standing on/looking at a block nearby (looking down: x_rotation 30..90)
execute as @a[distance=..4.5,tag=!stellarity.sitting_anchor,x_rotation=30..90] at @s align xyz positioned ~.5 ~ ~.5 unless entity @e[type=interaction,tag=stellarity.anchor_seat_trigger,distance=..0.1] unless block ~ ~-0.1 ~ air run summon interaction ~.5 ~ ~.5 {Tags:["stellarity.anchor_seat_trigger"],width:0.98F,height:0.8F}

# If player is looking forward/down slightly (x_rotation 0..45) at a block in front
execute as @a[distance=..4.5,tag=!stellarity.sitting_anchor,x_rotation=0..45] at @s positioned ^ ^ ^1.5 align xyz positioned ~.5 ~ ~.5 unless entity @e[type=interaction,tag=stellarity.anchor_seat_trigger,distance=..0.1] unless block ~ ~-0.1 ~ air run summon interaction ~.5 ~ ~.5 {Tags:["stellarity.anchor_seat_trigger"],width:0.98F,height:0.8F}
