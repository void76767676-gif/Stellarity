execute store result score @s foka.misc.motion.x1 run data get entity @s Pos.[0] 1000
execute store result score @s foka.misc.motion.y1 run data get entity @s Pos.[1] 1000
execute store result score @s foka.misc.motion.z1 run data get entity @s Pos.[2] 1000

scoreboard players reset #times foka.misc
execute facing entity @p[predicate=fokastudio:end/items/spirit_dagger/holding] feet rotated ~180 0 run function fokastudio:end/items/spirit_dagger/effects/knockback/get_distance

execute store result score @s foka.misc.motion.x2 run data get entity @s Pos.[0] 1000
execute store result score @s foka.misc.motion.y2 run data get entity @s Pos.[1] 1000
execute store result score @s foka.misc.motion.z2 run data get entity @s Pos.[2] 1000

scoreboard players operation @s foka.misc.motion.x2 -= @s foka.misc.motion.x1
scoreboard players operation @s foka.misc.motion.y2 -= @s foka.misc.motion.y1
scoreboard players operation @s foka.misc.motion.z2 -= @s foka.misc.motion.z1

execute store result entity @s Motion.[0] double 0.01 run scoreboard players get @s foka.misc.motion.x2
execute store result entity @s Motion.[1] double 0.01 run scoreboard players get @s foka.misc.motion.y2
execute store result entity @s Motion.[2] double 0.01 run scoreboard players get @s foka.misc.motion.z2
