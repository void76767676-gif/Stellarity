# Cooldown check
execute if entity @p[predicate=stellarity:item/holding/radiant_kaleidoscope,tag=stellarity.item.rk.on_cooldown] run function stellarity:item/radiant_kaleidoscope/attack_on_cooldown
execute if entity @p[predicate=stellarity:item/holding/radiant_kaleidoscope,tag=stellarity.item.rk.on_cooldown] run return 0

# Guard check
execute if entity @p[predicate=stellarity:item/holding/radiant_kaleidoscope,tag=stellarity.item.rk.guard_active] run return 0

# Crush check
execute if entity @p[predicate=stellarity:item/holding/radiant_kaleidoscope,predicate=kohara:player/can_crit,predicate=!kohara:player/gliding] if score @s stellarity.item.rk.mark_rank matches 1.. run return run function stellarity:item/radiant_kaleidoscope/crush/strike

# Normal SFX
playsound stellarity:item.radiant_kaleidoscope.swing player @a ~ ~ ~ 1 1
playsound stellarity:item.radiant_kaleidoscope.hit player @a ~ ~ ~ 1 1
playsound stellarity:item.weapon.kaleidoscope.hit_vibration player @a[distance=..24] ~ ~ ~ 0.8 1.1
schedule function stellarity:item/radiant_kaleidoscope/after_hit 2t append

# Normal VFX
particle sweep_attack ~ ~1 ~ 0 0 0 0 1
particle flash{color:-1} ~ ~1 ~ 0 0 0 0 1
particle end_rod ~ ~1 ~ 0.25 0.25 0.25 0.1 16
particle flame ~ ~1 ~ 0.2 0.2 0.2 0.03 10
particle dust{color:[1.0, 0.2, 0.2],scale:1.2} ~ ~1 ~ 0.3 0.3 0.3 0.05 4
particle dust{color:[1.0, 0.6, 0.1],scale:1.2} ~ ~1 ~ 0.3 0.3 0.3 0.05 4
particle dust{color:[1.0, 0.9, 0.2],scale:1.2} ~ ~1 ~ 0.3 0.3 0.3 0.05 4
particle dust{color:[0.2, 0.8, 0.4],scale:1.2} ~ ~1 ~ 0.3 0.3 0.3 0.05 4
particle dust{color:[0.2, 0.7, 1.0],scale:1.2} ~ ~1 ~ 0.3 0.3 0.3 0.05 4
particle dust{color:[0.3, 0.3, 0.9],scale:1.2} ~ ~1 ~ 0.3 0.3 0.3 0.05 4
particle dust{color:[0.7, 0.2, 0.9],scale:1.2} ~ ~1 ~ 0.3 0.3 0.3 0.05 4

# Damage calculation
scoreboard players set #damage kohara.misc 180
execute if score @s stellarity.item.rk.mark_rank matches 2 run scoreboard players set #damage kohara.misc 187
execute if score @s stellarity.item.rk.mark_rank matches 3 run scoreboard players set #damage kohara.misc 194
execute if score @s stellarity.item.rk.mark_rank matches 4 run scoreboard players set #damage kohara.misc 202
execute if score @s stellarity.item.rk.mark_rank matches 5 run scoreboard players set #damage kohara.misc 209
execute if score @s stellarity.item.rk.mark_rank matches 6 run scoreboard players set #damage kohara.misc 216
execute if score @s stellarity.item.rk.mark_rank matches 7 run scoreboard players set #damage kohara.misc 223

# Tag attacker
tag @p[predicate=stellarity:item/holding/radiant_kaleidoscope] add kohara.attacker

# Calculate damage
function kohara:damage/calculate {armor_penetration:50,damage_boost_efficiency:50,ap_damage_type:"kohara:armor_piercing",damage_type:"stellarity:radiant_kaleidoscope",tag:"stellarity.damage.radiant_kaleidoscope"}
execute if entity @s[type=ender_dragon] run scoreboard players set @s stellarity.dragon.rk_damage_window 3

# Apply inferno
function stellarity:mechanic/enchantments/infernal_infusion/apply_prismatic_inferno

# Advance mark
function stellarity:item/radiant_kaleidoscope/mark/apply

# Trigger cooldown
execute as @p[predicate=stellarity:item/holding/radiant_kaleidoscope] run function stellarity:item/radiant_kaleidoscope/cooldown/start
