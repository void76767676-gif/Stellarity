# Mega crit
execute store result score #rnd kohara.misc run random value 1..3
execute if score #rnd kohara.misc matches 1 run playsound stellarity:item/radiant_kaleidoscope/mega_crit1 player @a ~ ~ ~ 1.5 1
execute if score #rnd kohara.misc matches 2 run playsound stellarity:item/radiant_kaleidoscope/mega_crit2 player @a ~ ~ ~ 1.5 1
execute if score #rnd kohara.misc matches 3 run playsound stellarity:item/radiant_kaleidoscope/mega_crit3 player @a ~ ~ ~ 1.5 1

# Delayed sound
schedule function stellarity:item/radiant_kaleidoscope/crush/after_crit 2t append

# Prismatic explosion
particle flash{color:-1} ~ ~1.2 ~ 0 0 0 0 2
particle explosion ~ ~1.2 ~ 0.5 0.5 0.5 0 4
particle end_rod ~ ~1.2 ~ 0.4 0.4 0.4 0.25 64
particle crit ~ ~1.2 ~ 0.5 0.5 0.5 1.0 80

# Spectrum burst
particle dust{color:[0.90, 0.20, 0.15],scale:1.6} ~ ~1.2 ~ 0.6 0.4 0.6 0.15 25
particle dust{color:[1.00, 0.60, 0.05],scale:1.6} ~ ~1.2 ~ 0.6 0.4 0.6 0.15 25
particle dust{color:[0.95, 0.85, 0.10],scale:1.6} ~ ~1.2 ~ 0.6 0.4 0.6 0.15 25
particle dust{color:[0.10, 0.75, 0.45],scale:1.6} ~ ~1.2 ~ 0.6 0.4 0.6 0.15 25
particle dust{color:[0.15, 0.65, 0.95],scale:1.6} ~ ~1.2 ~ 0.6 0.4 0.6 0.15 25
particle dust{color:[0.20, 0.25, 0.85],scale:1.6} ~ ~1.2 ~ 0.6 0.4 0.6 0.15 25
particle dust{color:[0.65, 0.20, 0.85],scale:1.6} ~ ~1.2 ~ 0.6 0.4 0.6 0.15 25

# Crush damage
scoreboard players set #damage kohara.misc 335
execute if score @s stellarity.item.rk.mark_rank matches 2 run scoreboard players set #damage kohara.misc 342
execute if score @s stellarity.item.rk.mark_rank matches 3 run scoreboard players set #damage kohara.misc 349
execute if score @s stellarity.item.rk.mark_rank matches 4 run scoreboard players set #damage kohara.misc 356
execute if score @s stellarity.item.rk.mark_rank matches 5 run scoreboard players set #damage kohara.misc 364
execute if score @s stellarity.item.rk.mark_rank matches 6 run scoreboard players set #damage kohara.misc 371
execute if score @s stellarity.item.rk.mark_rank matches 7 run scoreboard players set #damage kohara.misc 378

# Tag attacker
tag @p[predicate=stellarity:item/holding/radiant_kaleidoscope] add kohara.attacker

# Calculate damage
function kohara:damage/calculate {armor_penetration:50,damage_boost_efficiency:50,ap_damage_type:"kohara:armor_piercing",damage_type:"stellarity:radiant_kaleidoscope_crush",tag:"stellarity.damage.radiant_kaleidoscope"}
execute if entity @s[type=ender_dragon] run scoreboard players set @s stellarity.dragon.rk_damage_window 3

# Apply inferno
function stellarity:mechanic/enchantments/infernal_infusion/apply_prismatic_inferno

# Remove mark
function stellarity:item/radiant_kaleidoscope/mark/remove

# Start cooldown
execute as @p[predicate=stellarity:item/holding/radiant_kaleidoscope] run function stellarity:item/radiant_kaleidoscope/cooldown/start
