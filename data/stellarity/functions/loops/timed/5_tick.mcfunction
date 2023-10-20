# Shulker Armor Shulker Bullet targetting
execute as @e[type=minecraft:shulker_bullet,tag=stellarity.defensive_shulker_bullet] at @s run function stellarity:items/armors/shulker_armor/bullet_seek
tag @a[tag=stellarity.items.shulker_armor.attacker] remove stellarity.items.shulker_armor.attacker

# Tridents return when in Void
execute as @e[type=trident,predicate=kohara:below_y_0,predicate=stellarity:locations/in_the_end] run data merge entity @s {DealtDamage:1b}

schedule function stellarity:loops/timed/5_tick 5t
