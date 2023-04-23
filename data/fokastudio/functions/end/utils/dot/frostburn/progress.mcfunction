scoreboard players add @s foka.dot.frostburn.progress 1

execute if score @s foka.dot.frostburn.progress = @s foka.dot.frostburn.delay run function fokastudio:end/utils/dot/frostburn/damage

scoreboard players remove @s foka.dot.frostburn.time 1
