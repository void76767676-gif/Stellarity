# #damage foka.misc: damage to add to entity, to 1 decimal place
# #armor_penetration foka.misc: how much damage (%) should ignore armor

# Set variables to default values if they are not present
execute unless score #ignore_iframes foka.misc matches ..2147483647 run scoreboard players set #ignore_iframes foka.misc 0
execute unless score #ignore_resistance foka.misc matches ..2147483647 run scoreboard players set #ignore_resistance foka.misc 0
execute unless score #damage_type foka.misc matches ..2147483647 run scoreboard players set #damage_type foka.misc 0
execute unless score #damage_effect foka.misc matches ..2147483647 run scoreboard players set #damage_effect foka.misc 0

## Insert Armor Values (Not part of formula)
execute store result score #armor foka.misc run attribute @s minecraft:generic.armor get 10
execute store result score #armor_toughness foka.misc run attribute @s minecraft:generic.armor_toughness get 10

# Constants
scoreboard players set #5 foka.misc 5
scoreboard players set #4 foka.misc 4
scoreboard players set #25 foka.misc 25
scoreboard players set #10 foka.misc 10
scoreboard players set #100 foka.misc 100

# Remove Holy Protection if a player has it
execute if entity @s[type=player,tag=foka.holy_protection] run function fokastudio:end/items/armors/hallowed_armor/holy_protection/off

# Calculate Armor after Armor Penetration
# Set to 0 (no armor pen) if scoreboard is not set
execute unless score #armor_penetration foka.misc matches 0..100 run scoreboard players set #armor_penetration foka.misc 0
execute unless score #armor foka.misc matches 0 unless score #armor_penetration foka.misc matches 0 run function fokastudio:end/utils/damage/operations/armor_penetration

execute unless score #armor foka.misc matches 0 unless score #armor_penetration foka.misc matches 100 run function fokastudio:end/utils/damage/operations/armor
execute unless score #armor foka.misc matches 0 unless score #armor_penetration foka.misc matches 100 run function fokastudio:end/utils/damage/operations/protection
execute unless score #ignore_resistance foka.misc matches 1 if data entity @s ActiveEffects[{Id:11}] if score #damage foka.misc matches 1.. run function fokastudio:end/utils/damage/operations/resistance
function fokastudio:end/utils/damage/calculate_attributes

execute unless entity @s[tag=foka.dead] run function fokastudio:end/utils/damage/apply_damage
tag @s remove foka.dead

tag @s remove foka.damage.example_cause
tag @s remove foka.damage.sharanga_explosion
tag @s remove foka.damage.eol.ethereal_lance
tag @s remove foka.damage.eol.prismatic_bolt
tag @s remove foka.damage.eol.dash
tag @s remove foka.damage.carcanet
tag @s remove foka.damage.spirit_dagger
tag @s remove foka.damage.dragonblade
tag @s remove foka.damage.tamaris_execute
tag @s remove foka.damage.natures_wrath
tag @s remove foka.damage.dot.dark_decay
tag @s remove foka.damage.dot.prismatic_inferno
tag @s remove foka.damage.frostburn

tag @e remove foka.damage.attacker

scoreboard players reset #armor_penetration foka.misc
scoreboard players reset #ignore_iframes foka.misc
scoreboard players reset #ignore_resistance foka.misc
scoreboard players reset #damage_type foka.misc
scoreboard players reset #damage_effect foka.misc
