function stellarity:visuals/end_portal_animation/animation/flash

scoreboard players add @s stellarity.misc.end_portal_eyes_consumed 1

kill @e[type=marker,limit=1,sort=nearest,tag=stellarity.floaty_power.homing]
