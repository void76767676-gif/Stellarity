# #damage stellarity.misc: damage to add to entity, to 1 decimal place
# #armor_penetration stellarity.misc: how much damage (%) should ignore armor

# Set variables to default values if they are not present
execute unless score #ignore_iframes stellarity.misc matches 0..1 run scoreboard players set #ignore_iframes stellarity.misc 0
execute unless score #armor_penetration stellarity.misc matches 0..100 run scoreboard players set #armor_penetration stellarity.misc 0
execute unless score #damage_boost_efficiency stellarity.misc matches 0..100 run scoreboard players set #damage_boost_efficiency stellarity.misc 0

# Is there an attacker?
scoreboard players set #has_attacker stellarity.misc 0
execute if entity @e[tag=stellarity.damage.attacker] run scoreboard players set #has_attacker stellarity.misc 1

execute if score #has_attacker stellarity.misc matches 1 unless score #damage_boost_efficiency stellarity.misc matches 0 as @e[tag=stellarity.damage.attacker,limit=1,sort=nearest] run function stellarity:utils/damage/bonus_damage
execute unless score #armor_penetration stellarity.misc matches 0 run function stellarity:utils/damage/armor_penetration

# Fail execute if Totem of Undying is used
# or Holy Protection invulnerability is triggered
tag @s[predicate=stellarity:utils/totem/holding] add stellarity.tag
execute if entity @s[tag=stellarity.tag,tag=stellarity.damage.tamaris_execute] as @p[tag=stellarity.damage.attacker] at @s run function stellarity:items/tamaris/execute/fail
execute if entity @s[type=player,tag=stellarity.holy_protection,tag=stellarity.damage.tamaris_execute] as @p[tag=stellarity.damage.attacker] at @s run function stellarity:items/tamaris/execute/fail
tag @s remove stellarity.tag

# Disable vanilla death messages
execute store result score #death_messages stellarity.misc run gamerule showDeathMessages
gamerule showDeathMessages false

# Apply damage
function stellarity:utils/damage/apply_damage

# Remove Holy Protection if a player has it
execute if entity @s[type=player,tag=stellarity.holy_protection] run function stellarity:items/armors/hallowed_armor/holy_protection/off

# Print out custom Stellarity death messages
execute store result storage stellarity:temp damage.health float 1 run data get entity @s Health 1
execute if score #death_messages stellarity.misc matches 1 if data storage stellarity:temp {damage:{health:0f}} if entity @s[type=player] run function stellarity:utils/damage/death_messages
execute if score #death_messages stellarity.misc matches 1 if data storage stellarity:temp {damage:{health:0f}} if data entity @s Owner run function stellarity:utils/damage/death_messages
# And then reenable vanilla ones!
# But only if they were enabled
execute if score #death_messages stellarity.misc matches 1 run gamerule showDeathMessages true

# Remove tags
tag @s remove stellarity.damage.example_cause
tag @s remove stellarity.damage.sharanga_explosion
tag @s remove stellarity.damage.eol.ethereal_lance
tag @s remove stellarity.damage.eol.prismatic_bolts
tag @s remove stellarity.damage.eol.dash
tag @s remove stellarity.damage.carcanet
tag @s remove stellarity.damage.spirit_dagger
tag @s remove stellarity.damage.dragonblade
tag @s remove stellarity.damage.tamaris_execute
tag @s remove stellarity.damage.natures_wrath
tag @s remove stellarity.damage.dot.dark_decay
tag @s remove stellarity.damage.dot.prismatic_inferno
tag @s remove stellarity.damage.dot.frostburn
tag @s remove stellarity.damage.kaleidoscope

# Remove the attacker tag
tag @e[tag=stellarity.damage.attacker] remove stellarity.damage.attacker


# Reset scores
scoreboard players reset #damage stellarity.misc
scoreboard players reset #damage_ap stellarity.misc
scoreboard players reset #armor_penetration stellarity.misc
scoreboard players reset #ignore_iframes stellarity.misc
scoreboard players reset #damage_boost_efficiency stellarity.misc
