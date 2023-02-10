# Timer
scoreboard players add @s fe.timer 1

# Deactivate portal
execute if score @s fe.timer matches 1 run function far_end:structures/exit_portal/deactivated/generate
execute if score @s fe.timer matches 1 run advancement grant @a[distance=..32] only fokastudio:end/dragons_den/sacrificial_ritual
execute if score @s fe.timer matches 1 run summon marker ~ ~-1 ~ {Tags:["foka.dragon_respawn.marker"]}

# Utility marker for secondary animations
scoreboard players operation @e[type=marker,tag=foka.dragon_respawn.marker] foka.misc = @s fe.timer
execute as @e[type=marker,tag=foka.dragon_respawn.marker] at @s run function fokastudio:end/visuals/dragon_respawn_animation/loop


# Cancel animation if End Crystals are missing
execute unless score @s fe.count matches 4 run function far_end:structures/exit_portal/respawn/cancel

# Crystal loop
execute as @e[type=minecraft:end_crystal,distance=..5,tag=fe.respawn_crystal] run function far_end:structures/exit_portal/respawn/as_respawn_crystal

# crystal cage
execute if score @s fe.timer matches 220 positioned 18 94 59 run function far_end:structures/exit_portal/respawn/repair_cage
execute if score @s fe.timer matches 260 positioned -19 106 59 run function far_end:structures/exit_portal/respawn/repair_cage
execute if score @s fe.timer matches 420 positioned -19 96 -60 run function far_end:structures/exit_portal/respawn/repair_cage
execute if score @s fe.timer matches 500 positioned 50 95 -39 run function far_end:structures/exit_portal/respawn/repair_cage

# crystal replacement
execute as @e[type=minecraft:end_crystal,tag=fe.new_crystal] at @s run function far_end:structures/exit_portal/respawn/replace_crystal

execute if score @s fe.timer matches 700 run function fokastudio:end/mobs/dragon/respawn_finish
