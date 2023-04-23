scoreboard players add @s foka.dot.prismatic_inferno.progress 1

execute if score @s foka.dot.prismatic_inferno.progress = @s foka.dot.prismatic_inferno.delay run function fokastudio:end/utils/dot/prismatic_inferno/damage

scoreboard players remove @s foka.dot.prismatic_inferno.time 1
