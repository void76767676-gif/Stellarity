# Attack handler called by Iridescence enchantment
# @s is victim, attacker is holding Radiant Kaleidoscope

# Check if attacker is on cooldown
execute if entity @p[predicate=stellarity:item/holding/radiant_kaleidoscope,tag=stellarity.item.rk.on_cooldown] run function stellarity:item/radiant_kaleidoscope/attack_on_cooldown
execute if entity @p[predicate=stellarity:item/holding/radiant_kaleidoscope,tag=stellarity.item.rk.on_cooldown] run return 0

# Check if attacker is in active guard
execute if entity @p[predicate=stellarity:item/holding/radiant_kaleidoscope,tag=stellarity.item.rk.guard_active] run return 0

# Check Crushing Strike conditions:
# 1. Attacker is in jump-fall phase (can_crit + not gliding)
# 2. Target @s has Radiant Mark active (rank 1..7)
execute if entity @p[predicate=stellarity:item/holding/radiant_kaleidoscope,predicate=kohara:player/can_crit,predicate=!kohara:player/gliding] if score @s stellarity.item.rk.mark_rank matches 1.. run return run function stellarity:item/radiant_kaleidoscope/crush/strike

# Normal Attack
# Sound effects
playsound stellarity:item.radiant_kaleidoscope.swing player @a ~ ~ ~ 1 1
playsound stellarity:item.radiant_kaleidoscope.hit player @a ~ ~ ~ 1 1

# Schedule delayed echo sound after 2 ticks
schedule function stellarity:item/radiant_kaleidoscope/after_hit 2t append

# Base damage = 18 HP (#damage = 180) + additive rank bonus
scoreboard players set #damage kohara.misc 180
execute if score @s stellarity.item.rk.mark_rank matches 2 run scoreboard players set #damage kohara.misc 187
execute if score @s stellarity.item.rk.mark_rank matches 3 run scoreboard players set #damage kohara.misc 194
execute if score @s stellarity.item.rk.mark_rank matches 4 run scoreboard players set #damage kohara.misc 202
execute if score @s stellarity.item.rk.mark_rank matches 5 run scoreboard players set #damage kohara.misc 209
execute if score @s stellarity.item.rk.mark_rank matches 6 run scoreboard players set #damage kohara.misc 216
execute if score @s stellarity.item.rk.mark_rank matches 7 run scoreboard players set #damage kohara.misc 223

# Tag attacker for Kohara calculation
tag @p[predicate=stellarity:item/holding/radiant_kaleidoscope] add kohara.attacker

# Calculate custom damage
function kohara:damage/calculate {armor_penetration:50,damage_boost_efficiency:50,ap_damage_type:"kohara:armor_piercing",damage_type:"stellarity:radiant_kaleidoscope",tag:"stellarity.damage.radiant_kaleidoscope"}

# Apply Prismatic Inferno
function stellarity:mechanic/enchantments/infernal_infusion/apply_prismatic_inferno

# Apply or advance Radiant Mark
function stellarity:item/radiant_kaleidoscope/mark/apply
