# Random sound
execute store result score #rnd kohara.misc run random value 1..100

# Secret sound
execute if score #rnd kohara.misc matches 1..2 run playsound stellarity:item.radiant_kaleidoscope.kill_secret player @a ~ ~ ~ 1.5 1

# Kill sounds
execute if score #rnd kohara.misc matches 3..100 if score @s stellarity.item.rk.mark_rank matches 1.. run playsound stellarity:item.radiant_kaleidoscope.kill_marked player @a ~ ~ ~ 1.5 1
execute if score #rnd kohara.misc matches 3..100 unless score @s stellarity.item.rk.mark_rank matches 1.. run playsound stellarity:item.radiant_kaleidoscope.kill player @a ~ ~ ~ 1.5 1

# Cleanup entity
execute unless entity @s[type=ender_dragon] run team leave @s
execute unless entity @s[type=ender_dragon] run data modify entity @s Glowing set value 0b
scoreboard players reset @s stellarity.item.rk.mark_rank
scoreboard players reset @s stellarity.item.rk.mark_timer
scoreboard players reset @s stellarity.item.rk.mark_phase
scoreboard players reset @s stellarity.item.rk.crown_angle

# Start cooldown
execute as @p[distance=..32,predicate=stellarity:item/holding/radiant_kaleidoscope] run function stellarity:item/radiant_kaleidoscope/cooldown/start
