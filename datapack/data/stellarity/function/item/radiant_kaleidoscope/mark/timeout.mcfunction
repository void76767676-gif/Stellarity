# Mark timeout / falloff: implosion particles
particle portal ~ ~1.2 ~ 0.1 0.1 0.1 0.5 25
particle dust{color:[0.90, 0.20, 0.15],scale:1.2} ~ ~1.2 ~ 0.3 0.3 0.3 0 15

# Fade sound
playsound stellarity:item.radiant_kaleidoscope.mark_fade player @a ~ ~ ~ 1 1

# Reset mark tags and glow
team leave @s
data modify entity @s Glowing set value 0b
scoreboard players reset @s stellarity.item.rk.mark_rank
scoreboard players reset @s stellarity.item.rk.mark_timer
scoreboard players reset @s stellarity.item.rk.mark_phase
scoreboard players reset @s stellarity.item.rk.crown_angle

# Apply 48-second cooldown penalty to player who lost combo
execute as @p[distance=..32,predicate=stellarity:item/holding/radiant_kaleidoscope] run function stellarity:item/radiant_kaleidoscope/cooldown/start
