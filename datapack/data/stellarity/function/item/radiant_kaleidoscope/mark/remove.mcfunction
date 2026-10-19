# Clean removal
execute unless entity @s[type=ender_dragon] run team leave @s
execute unless entity @s[type=ender_dragon] run data modify entity @s Glowing set value 0b
scoreboard players reset @s stellarity.item.rk.mark_rank
scoreboard players reset @s stellarity.item.rk.mark_timer
scoreboard players reset @s stellarity.item.rk.mark_phase
scoreboard players reset @s stellarity.item.rk.crown_angle
