scoreboard players add @s foka.misc.end_portal_animation 1

tp @s ~ ~ ~ ~5 ~

execute if score @s foka.misc.end_portal_animation matches 2 run function fokastudio:end/visuals/end_portal_animation/animation/floaty_power/spawn
execute if score @s foka.misc.end_portal_animation matches 2.. run function fokastudio:end/visuals/end_portal_animation/animation/smoke

execute if score @s foka.misc.end_portal_animation matches 2 run playsound minecraft:entity.zombie_villager.converted block @a ~ ~ ~ 1 0
execute if score @s foka.misc.end_portal_animation matches 12 run playsound minecraft:entity.zombie_villager.converted block @a ~ ~ ~ 0.4 0
execute if score @s foka.misc.end_portal_animation matches 22 run playsound minecraft:entity.zombie_villager.converted block @a ~ ~ ~ 0.33 0
execute if score @s foka.misc.end_portal_animation matches 32 run playsound minecraft:entity.zombie_villager.converted block @a ~ ~ ~ 0.26 0
execute if score @s foka.misc.end_portal_animation matches 42 run playsound minecraft:entity.zombie_villager.converted block @a ~ ~ ~ 0.19 0
execute if score @s foka.misc.end_portal_animation matches 52 run playsound minecraft:entity.zombie_villager.converted block @a ~ ~ ~ 0.12 0
execute if score @s foka.misc.end_portal_animation matches 62 run playsound minecraft:entity.zombie_villager.converted block @a ~ ~ ~ 0.05 0

execute if score @s foka.misc.end_portal_animation matches 6.. run scoreboard players add @s foka.misc.end_portal_bg_loop 1
execute if score @s foka.misc.end_portal_bg_loop matches 100 run scoreboard players reset @s foka.misc.end_portal_bg_loop
execute if score @s foka.misc.end_portal_bg_loop matches 1 run playsound block.beacon.ambient block @a ~ ~ ~ 2.3 0

execute if score @s foka.misc.end_portal_animation matches 2.. run particle minecraft:enchant ~ ~1 ~ 0 0 0 5 3

execute if score @s foka.misc.end_portal_animation matches 2.. run particle minecraft:portal ~ ~ ~ 0 0 0 5 4

execute as @e[type=vex,tag=foka.floaty_power] at @s run function fokastudio:end/visuals/end_portal_animation/animation/floaty_power/loop
execute as @e[type=marker,tag=foka.floaty_power.homing] at @s run function fokastudio:end/visuals/end_portal_animation/animation/floaty_power/marker_loop

execute if score @s foka.misc.end_portal_animation matches 40 as @e[type=vex,tag=foka.floaty_power,sort=nearest,limit=1] at @s run function fokastudio:end/visuals/end_portal_animation/animation/floaty_power/transform
execute if score @s foka.misc.end_portal_animation matches 50 as @e[type=vex,tag=foka.floaty_power,sort=nearest,limit=1] at @s run function fokastudio:end/visuals/end_portal_animation/animation/floaty_power/transform
execute if score @s foka.misc.end_portal_animation matches 60 as @e[type=vex,tag=foka.floaty_power,sort=nearest,limit=1] at @s run function fokastudio:end/visuals/end_portal_animation/animation/floaty_power/transform
execute if score @s foka.misc.end_portal_animation matches 70 as @e[type=vex,tag=foka.floaty_power,sort=nearest,limit=1] at @s run function fokastudio:end/visuals/end_portal_animation/animation/floaty_power/transform
execute if score @s foka.misc.end_portal_animation matches 80 as @e[type=vex,tag=foka.floaty_power,sort=nearest,limit=1] at @s run function fokastudio:end/visuals/end_portal_animation/animation/floaty_power/transform
execute if score @s foka.misc.end_portal_animation matches 90 as @e[type=vex,tag=foka.floaty_power,sort=nearest,limit=1] at @s run function fokastudio:end/visuals/end_portal_animation/animation/floaty_power/transform
execute if score @s foka.misc.end_portal_animation matches 100 as @e[type=vex,tag=foka.floaty_power,sort=nearest,limit=1] at @s run function fokastudio:end/visuals/end_portal_animation/animation/floaty_power/transform
execute if score @s foka.misc.end_portal_animation matches 110 as @e[type=vex,tag=foka.floaty_power,sort=nearest,limit=1] at @s run function fokastudio:end/visuals/end_portal_animation/animation/floaty_power/transform
execute if score @s foka.misc.end_portal_animation matches 120 as @e[type=vex,tag=foka.floaty_power,sort=nearest,limit=1] at @s run function fokastudio:end/visuals/end_portal_animation/animation/floaty_power/transform
execute if score @s foka.misc.end_portal_animation matches 130 as @e[type=vex,tag=foka.floaty_power,sort=nearest,limit=1] at @s run function fokastudio:end/visuals/end_portal_animation/animation/floaty_power/transform
execute if score @s foka.misc.end_portal_animation matches 140 as @e[type=vex,tag=foka.floaty_power,sort=nearest,limit=1] at @s run function fokastudio:end/visuals/end_portal_animation/animation/floaty_power/transform
execute if score @s foka.misc.end_portal_animation matches 150 as @e[type=vex,tag=foka.floaty_power,sort=nearest,limit=1] at @s run function fokastudio:end/visuals/end_portal_animation/animation/floaty_power/transform

#function fokastudio:end/visuals/end_portal_animation/animation/circle
#execute rotated ~90 ~ run function fokastudio:end/visuals/end_portal_animation/animation/circle
#execute rotated ~-90 ~ run function fokastudio:end/visuals/end_portal_animation/animation/circle
#execute rotated ~180 ~ run function fokastudio:end/visuals/end_portal_animation/animation/circle

execute if score @s foka.misc.end_portal_eyes_consumed matches 12 run function fokastudio:end/visuals/end_portal_animation/animation/finish
