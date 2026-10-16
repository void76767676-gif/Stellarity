# Triggered by /trigger sit

scoreboard players reset @s sit

# Check if an anchor marker already exists within 4.5 blocks
execute unless entity @e[type=marker,tag=stellarity.respawn_anchor,distance=..4.5] run function stellarity:mechanic/sit_anchor/scan_offsets

# If anchor exists within 4.5 blocks, sit down on current block
execute if entity @e[type=marker,tag=stellarity.respawn_anchor,distance=..4.5] at @s run function stellarity:mechanic/sit_anchor/sit_here
execute unless entity @e[type=marker,tag=stellarity.respawn_anchor,distance=..4.5] run tellraw @s {"text":"[Stellarity] You can only rest within 4 blocks of a Respawn Anchor!","color":"#D18CFF"}
