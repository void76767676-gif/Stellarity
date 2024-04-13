# Shulker Armor Shulker Bullet targetting
execute as @e[type=minecraft:shulker_bullet,tag=stellarity.defensive_shulker_bullet] at @s run function stellarity:items/armors/shulker_armor/shulker_bullets/seek
tag @a[tag=stellarity.items.shulker_armor.attacker] remove stellarity.items.shulker_armor.attacker

execute as @e[type=#stellarity:entity_awareness_checks,tag=!stellarity.aware] run tag @s add stellarity.aware

# Gloop Froggo protection
execute as @e[type=slime,tag=stellarity.gloop] at @s if entity @e[type=frog,distance=..8] run effect give @s resistance 1 5 true

schedule function stellarity:loops/timed/5_tick 5t
