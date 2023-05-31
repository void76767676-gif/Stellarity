scoreboard players add @s foka.items.ender_insignia.hold_duration 1 

# Removing effects
execute if entity @s[nbt={HurtTime:9s}] run function fokastudio:end/items/ender_insignia/remove
execute if entity @s[scores={foka.misc.invul_timer=9}] run function fokastudio:end/items/ender_insignia/remove

execute if entity @s[predicate=!fokastudio:end/utils/player/is_sneaking,tag=foka.ender_insignia.active] run function fokastudio:end/items/ender_insignia/remove
execute if entity @s[predicate=!fokastudio:end/items/holding_ender_insignia,tag=foka.ender_insignia.active] run function fokastudio:end/items/ender_insignia/remove

execute if score @s foka.items.ender_insignia.hold_duration matches 1 run playsound minecraft:block.beacon.activate player @a ~ ~ ~

# Reduce momevemt speed
execute if score @s foka.items.ender_insignia.hold_duration matches 1 run attribute @s generic.movement_speed modifier add 401458ce-37e6-408f-9b4d-0ec9a6e65947 "foka.ender_insignia" -0.66 multiply

# Tier 1
execute if score @s foka.items.ender_insignia.hold_duration matches 50 run function fokastudio:end/items/ender_insignia/effects/1
# Tier 2
execute if score @s foka.items.ender_insignia.hold_duration matches 100 run function fokastudio:end/items/ender_insignia/effects/2

# Tier 3
execute if score @s foka.items.ender_insignia.hold_duration matches 150 run function fokastudio:end/items/ender_insignia/effects/3

# Tier 4
execute if score @s foka.items.ender_insignia.hold_duration matches 200 run function fokastudio:end/items/ender_insignia/effects/4

# Portal Particles
execute if score @s foka.items.ender_insignia.hold_duration matches 50..99 run particle minecraft:portal ~ ~1.05 ~ 0 0 0 0.87 2 force
execute if score @s foka.items.ender_insignia.hold_duration matches 100..149 run particle minecraft:portal ~ ~1.05 ~ 0 0 0 0.87 4 force
execute if score @s foka.items.ender_insignia.hold_duration matches 150..199 run particle minecraft:portal ~ ~1.05 ~ 0 0 0 0.87 6 force
execute if score @s foka.items.ender_insignia.hold_duration matches 200.. run particle minecraft:portal ~ ~1.05 ~ 0 0 0 0.87 8 force
