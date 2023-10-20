execute as @e[type=interaction,limit=1,sort=nearest,tag=stellarity.aota.sword_hitbox] if data entity @s interaction run function stellarity:mechanics/altar_of_accursed/dragonblade

function stellarity:mechanics/altar_of_accursed/sfx/loop

scoreboard players add @s stellarity.misc.loop.1s 1
execute if score @s stellarity.misc.loop.1s matches 20 run function stellarity:mechanics/altar_of_accursed/loop_1s
execute if score @s stellarity.misc.loop.1s matches 20 run scoreboard players reset @s stellarity.misc.loop.1s

execute if entity @p[predicate=kohara:player/is_sneaking] as @e[type=item,distance=..3,nbt={PickupDelay:32767s}] run data modify entity @s PickupDelay set value 0s