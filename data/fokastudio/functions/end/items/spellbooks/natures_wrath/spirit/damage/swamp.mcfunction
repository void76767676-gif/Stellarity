execute as @e[type=marker,limit=1,sort=nearest,tag=foka.natures_wrath.spirit] at @s run function fokastudio:end/items/spellbooks/natures_wrath/spirit/damage/as_marker/swamp

scoreboard players set #damage foka.misc 50

scoreboard players set #armor_penetration foka.misc 0
scoreboard players set #ignore_iframes foka.misc 1
scoreboard players set #ignore_resistance foka.misc 0
scoreboard players set #damage_type foka.misc 2
scoreboard players set #damage_effects foka.misc 4

tag @s add foka.damage.natures_wrath

effect give @s slowness 5 0 true

# Extra strong knockback
execute store result score @s foka.misc.motion.x1 run data get entity @s Pos.[0] 1000
execute store result score @s foka.misc.motion.y1 run data get entity @s Pos.[1] 1000
execute store result score @s foka.misc.motion.z1 run data get entity @s Pos.[2] 1000

execute at @s facing entity @p[predicate=fokastudio:end/items/spellbooks/holding_natures_wrath] feet rotated ~180 0 run tp @s ^ ^0.01 ^0.04 ~ ~

execute store result score @s foka.misc.motion.x2 run data get entity @s Pos.[0] 1000
execute store result score @s foka.misc.motion.y2 run data get entity @s Pos.[1] 1000
execute store result score @s foka.misc.motion.z2 run data get entity @s Pos.[2] 1000

scoreboard players operation @s foka.misc.motion.x2 -= @s foka.misc.motion.x1
scoreboard players operation @s foka.misc.motion.y2 -= @s foka.misc.motion.y1
scoreboard players operation @s foka.misc.motion.z2 -= @s foka.misc.motion.z1

execute store result entity @s Motion.[0] double 0.027 run scoreboard players get @s foka.misc.motion.x2
execute store result entity @s Motion.[1] double 0.042 run scoreboard players get @s foka.misc.motion.y2
execute store result entity @s Motion.[2] double 0.027 run scoreboard players get @s foka.misc.motion.z2

function fokastudio:end/utils/damage/calculate
