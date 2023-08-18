# Bossbar Clears
bossbar set stellarity:eol players
execute at @e[type=vindicator,tag=stellarity.eol] run bossbar set stellarity:eol players @a[distance=..100]

# Shulker Armor Shulker Bullet targetting
execute as @e[type=minecraft:shulker_bullet,tag=stellarity.defensive_shulker_bullet] at @s run function stellarity:items/armors/shulker_armor/bullet_seek
tag @a[tag=stellarity.items.shulker_armor.attacker] remove stellarity.items.shulker_armor.attacker

schedule function stellarity:loops/timed/5_tick 5t
