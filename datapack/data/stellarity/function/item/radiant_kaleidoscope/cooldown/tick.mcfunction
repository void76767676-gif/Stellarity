# Decrement cooldown timer
scoreboard players remove @s stellarity.item.rk.cooldown 1

# Checkpoints at 6s, 12s, 18s, 24s, 30s, 36s, 42s
# 6s passed (840 ticks remaining) -> Checkpoint 1 (Vermilion)
execute if score @s stellarity.item.rk.cooldown matches 840 run playsound stellarity:item.radiant_kaleidoscope.soul_1 player @s ~ ~ ~ 1 1
execute if score @s stellarity.item.rk.cooldown matches 840 run particle dust{color:[0.90, 0.20, 0.15],scale:1.2} ~ ~1.2 ~ 0.2 0.2 0.2 0.05 10

# 12s passed (720 ticks remaining) -> Checkpoint 2 (Amber)
execute if score @s stellarity.item.rk.cooldown matches 720 run playsound stellarity:item.radiant_kaleidoscope.soul_2 player @s ~ ~ ~ 1 1
execute if score @s stellarity.item.rk.cooldown matches 720 run particle dust{color:[1.00, 0.60, 0.05],scale:1.2} ~ ~1.2 ~ 0.2 0.2 0.2 0.05 10

# 18s passed (600 ticks remaining) -> Checkpoint 3 (Citrine)
execute if score @s stellarity.item.rk.cooldown matches 600 run playsound stellarity:item.radiant_kaleidoscope.soul_3 player @s ~ ~ ~ 1 1
execute if score @s stellarity.item.rk.cooldown matches 600 run particle dust{color:[0.95, 0.85, 0.10],scale:1.2} ~ ~1.2 ~ 0.2 0.2 0.2 0.05 10

# 24s passed (480 ticks remaining) -> Checkpoint 4 (Viridian)
execute if score @s stellarity.item.rk.cooldown matches 480 run playsound stellarity:item.radiant_kaleidoscope.soul_4 player @s ~ ~ ~ 1 1
execute if score @s stellarity.item.rk.cooldown matches 480 run particle dust{color:[0.10, 0.75, 0.45],scale:1.2} ~ ~1.2 ~ 0.2 0.2 0.2 0.05 10

# 30s passed (360 ticks remaining) -> Checkpoint 5 (Azure)
execute if score @s stellarity.item.rk.cooldown matches 360 run playsound stellarity:item.radiant_kaleidoscope.soul_5 player @s ~ ~ ~ 1 1
execute if score @s stellarity.item.rk.cooldown matches 360 run particle dust{color:[0.15, 0.65, 0.95],scale:1.2} ~ ~1.2 ~ 0.2 0.2 0.2 0.05 10

# 36s passed (240 ticks remaining) -> Checkpoint 6 (Cobalt)
execute if score @s stellarity.item.rk.cooldown matches 240 run playsound stellarity:item.radiant_kaleidoscope.soul_6 player @s ~ ~ ~ 1 1
execute if score @s stellarity.item.rk.cooldown matches 240 run particle dust{color:[0.20, 0.25, 0.85],scale:1.2} ~ ~1.2 ~ 0.2 0.2 0.2 0.05 10

# 42s passed (120 ticks remaining) -> Checkpoint 7 (Amethyst)
execute if score @s stellarity.item.rk.cooldown matches 120 run playsound stellarity:item.radiant_kaleidoscope.soul_7 player @s ~ ~ ~ 1 1
execute if score @s stellarity.item.rk.cooldown matches 120 run particle dust{color:[0.65, 0.20, 0.85],scale:1.2} ~ ~1.2 ~ 0.2 0.2 0.2 0.05 10

# 47s passed (20 ticks remaining) -> Awakening!
execute if score @s stellarity.item.rk.cooldown matches 20 run playsound stellarity:item.radiant_kaleidoscope.soul_totem_awake player @s ~ ~ ~ 1.2 1
execute if score @s stellarity.item.rk.cooldown matches 20 run particle flash{color:-1} ~ ~1.2 ~ 0 0 0 0 1

# 48s passed (0 ticks remaining) -> Finished!
execute if score @s stellarity.item.rk.cooldown matches ..0 run function stellarity:item/radiant_kaleidoscope/cooldown/finish
