# Sit player at the current position

# Ensure player is not already sitting
execute if entity @s[tag=stellarity.sitting_anchor] run return 0

# Check block under player/interaction is solid
execute if block ~ ~-0.1 ~ air run return 0

# Align to block center horizontally, adjust vertical offset
execute align xz positioned ~.5 ~ ~.5 run summon minecraft:block_display ~ ~-0.35 ~ {Tags:["stellarity.anchor_seat","stellarity.marker"]}

# Mount player
ride @s mount @e[type=block_display,tag=stellarity.anchor_seat,distance=..1.5,limit=1,sort=nearest]

# Tags and state
tag @s add stellarity.sitting_anchor
tag @s add is_sitting
scoreboard players set @s stellarity.sit_timer 0
playsound minecraft:item.bundle.insert player @s ~ ~ ~ 1 0.8
