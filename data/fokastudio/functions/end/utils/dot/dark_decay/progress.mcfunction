scoreboard players add @s foka.dot.dark_decay.progress 1

execute if score @s foka.dot.dark_decay.progress = @s foka.dot.dark_decay.delay run function fokastudio:end/utils/dot/dark_decay/damage

scoreboard players remove @s foka.dot.dark_decay.time 1
