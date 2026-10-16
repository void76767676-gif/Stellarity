# Clean removal of mark without timeout penalty
team leave @s
data modify entity @s Glowing set value 0b
scoreboard players reset @s stellarity.item.rk.mark_rank
scoreboard players reset @s stellarity.item.rk.mark_timer
scoreboard players reset @s stellarity.item.rk.mark_phase
scoreboard players reset @s stellarity.item.rk.crown_angle
