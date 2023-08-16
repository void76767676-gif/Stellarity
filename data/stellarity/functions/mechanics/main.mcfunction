# Void Fishing
execute as @e[type=fishing_bobber,predicate=stellarity:locations/in_the_end,tag=!stellarity.checked_bobber] at @s if entity @a[distance=20..23,limit=1,sort=nearest,x_rotation=0..90] run function stellarity:mechanics/void_fishing/as_bobber/check
execute as @e[type=area_effect_cloud,tag=stellarity.void_fishing_aec] at @s run function stellarity:mechanics/void_fishing/as_aec/tick

# Totem of Undying gives Levitation when falling out of the world
execute as @a[scores={stellarity.mechanics.void_totem_protection_time=1..}] run scoreboard players remove @s stellarity.mechanics.void_totem_protection_time 1
# Some effects do not apply instantly or are overshadowed by Vanilla
# So... I just simply delayed them to the next tick afterwards xD
execute as @a[tag=stellarity.scheduled_void_totem_effect] at @s run function stellarity:mechanics/void_totem_protection/scheduled
# And finally our beloved every-tick-checks!
execute as @a[predicate=stellarity:utils/totem/holding,predicate=stellarity:locations/in_the_end] run function stellarity:mechanics/void_totem_protection/main

# Tridents return when in Void
execute as @e[type=trident,predicate=stellarity:utils/trident_above_void] run data merge entity @s {DealtDamage:1b}

execute as @e[type=marker,tag=stellarity.altar_of_accursed,tag=!stellarity.aota_activated] at @s if entity @e[type=item,distance=..1] run function stellarity:mechanics/altar_crafting/notice

execute as @e[type=marker,tag=stellarity.altar_of_the_light] at @s unless block ~ ~-1 ~ minecraft:shroomlight run function stellarity:mechanics/altar_of_light/drop_self
