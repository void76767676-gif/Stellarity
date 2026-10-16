# Entity killed with mark

execute store result score #rnd kohara.misc run random value 1..100

# 2% secret sound
execute if score #rnd kohara.misc matches 1..2 run playsound stellarity:item.radiant_kaleidoscope.kill_secret player @a ~ ~ ~ 1.5 1

# Mark variant vs normal kill
execute if score #rnd kohara.misc matches 3..100 if score @s stellarity.item.rk.mark_rank matches 1.. run playsound stellarity:item.radiant_kaleidoscope.kill_marked player @a ~ ~ ~ 1.5 1
execute if score #rnd kohara.misc matches 3..100 unless score @s stellarity.item.rk.mark_rank matches 1.. run playsound stellarity:item.radiant_kaleidoscope.kill player @a ~ ~ ~ 1.5 1

# Clean up entity
team leave @s
data modify entity @s Glowing set value 0b
scoreboard players reset @s stellarity.item.rk.mark_rank
scoreboard players reset @s stellarity.item.rk.mark_timer
scoreboard players reset @s stellarity.item.rk.mark_phase
scoreboard players reset @s stellarity.item.rk.crown_angle

# Ending combo on death triggers 48s cooldown on attacker
execute as @p[distance=..32,predicate=stellarity:item/holding/radiant_kaleidoscope] run function stellarity:item/radiant_kaleidoscope/cooldown/start
