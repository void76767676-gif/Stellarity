# Apply or upgrade Radiant Mark on victim @s
execute unless score @s stellarity.item.rk.mark_rank matches 1.. run scoreboard players set @s stellarity.item.rk.mark_rank 0

# If new mark: break previous combo on other entities
execute if score @s stellarity.item.rk.mark_rank matches 0 as @e[scores={stellarity.item.rk.mark_rank=1..}] unless entity @s[distance=0..0.01] at @s run function stellarity:item/radiant_kaleidoscope/mark/timeout

# Upgrade rank (up to 7)
execute if score @s stellarity.item.rk.mark_rank matches ..6 run scoreboard players add @s stellarity.item.rk.mark_rank 1

# If first rank: start phase 1 (suction) and play mark apply sound
execute if score @s stellarity.item.rk.mark_rank matches 1 run scoreboard players set @s stellarity.item.rk.mark_phase 1
execute if score @s stellarity.item.rk.mark_rank matches 1 run scoreboard players set @s stellarity.item.rk.phase_timer 6
execute if score @s stellarity.item.rk.mark_rank matches 1 run playsound stellarity:item.radiant_kaleidoscope.mark_apply player @a ~ ~ ~ 1 1

# If rank upgrade > 1: play burst flash
execute if score @s stellarity.item.rk.mark_rank matches 2.. run particle flash{color:-1} ~ ~1.2 ~ 0 0 0 0 1
execute if score @s stellarity.item.rk.mark_rank matches 2.. run particle end_rod ~ ~1.2 ~ 0.2 0.2 0.2 0.05 12

# Set mark duration timer based on canonical ranks
execute if score @s stellarity.item.rk.mark_rank matches 1 run scoreboard players set @s stellarity.item.rk.mark_timer 2180
execute if score @s stellarity.item.rk.mark_rank matches 2 run scoreboard players set @s stellarity.item.rk.mark_timer 1880
execute if score @s stellarity.item.rk.mark_rank matches 3 run scoreboard players set @s stellarity.item.rk.mark_timer 1680
execute if score @s stellarity.item.rk.mark_rank matches 4 run scoreboard players set @s stellarity.item.rk.mark_timer 1480
execute if score @s stellarity.item.rk.mark_rank matches 5 run scoreboard players set @s stellarity.item.rk.mark_timer 1280
execute if score @s stellarity.item.rk.mark_rank matches 6 run scoreboard players set @s stellarity.item.rk.mark_timer 1080
execute if score @s stellarity.item.rk.mark_rank matches 7 run scoreboard players set @s stellarity.item.rk.mark_timer 980

# Team glowing outline based on rank
data modify entity @s Glowing set value 1b
team leave @s
execute if score @s stellarity.item.rk.mark_rank matches 1 run team join stellarity.rk.red_glow @s
execute if score @s stellarity.item.rk.mark_rank matches 2 run team join stellarity.rk.gold_glow @s
execute if score @s stellarity.item.rk.mark_rank matches 3 run team join stellarity.rk.yellow_glow @s
execute if score @s stellarity.item.rk.mark_rank matches 4 run team join stellarity.rk.green_glow @s
execute if score @s stellarity.item.rk.mark_rank matches 5 run team join stellarity.rk.aqua_glow @s
execute if score @s stellarity.item.rk.mark_rank matches 6 run team join stellarity.rk.blue_glow @s
execute if score @s stellarity.item.rk.mark_rank matches 7 run team join stellarity.rk.purple_glow @s
