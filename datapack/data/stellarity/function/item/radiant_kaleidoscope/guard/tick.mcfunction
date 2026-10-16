# Exit conditions: released sneak, flying, or timer expired
execute unless predicate kohara:player/is_sneaking run return run function stellarity:item/radiant_kaleidoscope/guard/end
execute if predicate kohara:player/gliding run return run function stellarity:item/radiant_kaleidoscope/guard/end
execute if score @s stellarity.item.rk.shield_timer matches ..0 run return run function stellarity:item/radiant_kaleidoscope/guard/end

# Decrement shield timer
scoreboard players remove @s stellarity.item.rk.shield_timer 1

# Maintain protection and restrictions
effect give @s minecraft:resistance 2 1 true
effect give @s minecraft:mining_fatigue 2 255 true
effect give @s minecraft:weakness 2 255 true

# 1. Ground rainbow ring
particle dust{color:[1.00, 0.60, 0.05],scale:1.2} ~ ~0.1 ~ 0.8 0 0.8 0 6
particle dust{color:[0.15, 0.65, 0.95],scale:1.2} ~ ~0.1 ~ 0.8 0 0.8 0 6

# 2. Prismatic spherical frame
particle dust{color:[0.95, 0.85, 0.10],scale:1.0} ~ ~1.0 ~ 0.9 0.7 0.9 0 4
particle dust{color:[0.65, 0.20, 0.85],scale:1.0} ~ ~1.0 ~ 0.7 0.9 0.7 0 4
particle dust{color:[0.10, 0.75, 0.45],scale:1.0} ~ ~1.0 ~ 0.8 0.8 0.8 0 4

# 3. Orbital sparks
particle end_rod ~ ~1.0 ~ 0.6 0.6 0.6 0.02 2

# 4. Spectral flash every 1.5 seconds (30 ticks)
execute if score @s stellarity.item.rk.shield_timer matches 30 run function stellarity:item/radiant_kaleidoscope/guard/pulse
execute if score @s stellarity.item.rk.shield_timer matches 60 run function stellarity:item/radiant_kaleidoscope/guard/pulse
execute if score @s stellarity.item.rk.shield_timer matches 90 run function stellarity:item/radiant_kaleidoscope/guard/pulse
execute if score @s stellarity.item.rk.shield_timer matches 120 run function stellarity:item/radiant_kaleidoscope/guard/pulse
execute if score @s stellarity.item.rk.shield_timer matches 150 run function stellarity:item/radiant_kaleidoscope/guard/pulse
execute if score @s stellarity.item.rk.shield_timer matches 180 run function stellarity:item/radiant_kaleidoscope/guard/pulse
execute if score @s stellarity.item.rk.shield_timer matches 210 run function stellarity:item/radiant_kaleidoscope/guard/pulse
execute if score @s stellarity.item.rk.shield_timer matches 240 run function stellarity:item/radiant_kaleidoscope/guard/pulse
execute if score @s stellarity.item.rk.shield_timer matches 270 run function stellarity:item/radiant_kaleidoscope/guard/pulse
execute if score @s stellarity.item.rk.shield_timer matches 300 run function stellarity:item/radiant_kaleidoscope/guard/pulse

# Actionbar countdown
scoreboard players operation #shield_sec stellarity.misc = @s stellarity.item.rk.shield_timer
scoreboard players add #shield_sec stellarity.misc 19
scoreboard players set #20 stellarity.misc 20
scoreboard players operation #shield_sec stellarity.misc /= #20 stellarity.misc

title @s actionbar [{"text":"🛡️ ","color":"#00FFFF","bold":true},{"text":"Radiant Guard Active: ","color":"#FFFFFF"},{"score":{"name":"#shield_sec","objective":"stellarity.misc"},"color":"#00FFAA","bold":true},{"text":"s (-26% DMG)","color":"#00FFAA"},{"text":" 🛡️","color":"#00FFFF","bold":true}]
