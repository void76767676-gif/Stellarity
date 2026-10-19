# Init mark
execute unless score @s stellarity.item.rk.mark_rank matches 1.. run scoreboard players set @s stellarity.item.rk.mark_rank 0

# Break previous
execute if score @s stellarity.item.rk.mark_rank matches 0 as @e[scores={stellarity.item.rk.mark_rank=1..}] unless entity @s[distance=0..0.01] at @s run function stellarity:item/radiant_kaleidoscope/mark/timeout

# Upgrade rank
execute if score @s stellarity.item.rk.mark_rank matches ..6 run scoreboard players add @s stellarity.item.rk.mark_rank 1

# Phase 1 start
execute if score @s stellarity.item.rk.mark_rank matches 1 run scoreboard players set @s stellarity.item.rk.mark_phase 1
execute if score @s stellarity.item.rk.mark_rank matches 1 run scoreboard players set @s stellarity.item.rk.phase_timer 6
execute if score @s stellarity.item.rk.mark_rank matches 1 run playsound stellarity:item.radiant_kaleidoscope.mark_apply player @a ~ ~ ~ 1 1

# Rank upgrade sfx
execute if score @s stellarity.item.rk.mark_rank matches 2.. run particle flash{color:-1} ~ ~1.2 ~ 0 0 0 0 1
execute if score @s stellarity.item.rk.mark_rank matches 2.. run particle end_rod ~ ~1.2 ~ 0.2 0.2 0.2 0.05 12

# Set duration
execute if score @s stellarity.item.rk.mark_rank matches 1 run scoreboard players set @s stellarity.item.rk.mark_timer 2180
execute if score @s stellarity.item.rk.mark_rank matches 2 run scoreboard players set @s stellarity.item.rk.mark_timer 1880
execute if score @s stellarity.item.rk.mark_rank matches 3 run scoreboard players set @s stellarity.item.rk.mark_timer 1680
execute if score @s stellarity.item.rk.mark_rank matches 4 run scoreboard players set @s stellarity.item.rk.mark_timer 1480
execute if score @s stellarity.item.rk.mark_rank matches 5 run scoreboard players set @s stellarity.item.rk.mark_timer 1280
execute if score @s stellarity.item.rk.mark_rank matches 6 run scoreboard players set @s stellarity.item.rk.mark_timer 1080
execute if score @s stellarity.item.rk.mark_rank matches 7 run scoreboard players set @s stellarity.item.rk.mark_timer 980

# Glowing outline
execute unless entity @s[type=ender_dragon] run data modify entity @s Glowing set value 1b
execute unless entity @s[type=ender_dragon] run team leave @s
execute unless entity @s[type=ender_dragon] if score @s stellarity.item.rk.mark_rank matches 1 run team join stellarity.rk.red_glow @s
execute unless entity @s[type=ender_dragon] if score @s stellarity.item.rk.mark_rank matches 2 run team join stellarity.rk.gold_glow @s
execute unless entity @s[type=ender_dragon] if score @s stellarity.item.rk.mark_rank matches 3 run team join stellarity.rk.yellow_glow @s
execute unless entity @s[type=ender_dragon] if score @s stellarity.item.rk.mark_rank matches 4 run team join stellarity.rk.green_glow @s
execute unless entity @s[type=ender_dragon] if score @s stellarity.item.rk.mark_rank matches 5 run team join stellarity.rk.aqua_glow @s
execute unless entity @s[type=ender_dragon] if score @s stellarity.item.rk.mark_rank matches 6 run team join stellarity.rk.blue_glow @s
execute unless entity @s[type=ender_dragon] if score @s stellarity.item.rk.mark_rank matches 7 run team join stellarity.rk.purple_glow @s
