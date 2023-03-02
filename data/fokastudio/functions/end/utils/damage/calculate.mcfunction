scoreboard players set #should_continue foka.misc 1

execute store result score #iframes foka.misc run data get entity @s HurtTime 1
execute if score #ignore_iframes foka.misc matches 0 if score #iframes foka.misc matches 1.. run scoreboard players set #should_continue foka.misc 0
execute if entity @s[type=#fokastudio:end/invalid_targets] run scoreboard players set #should_continue foka.misc 0
execute if entity @s[type=player] run function fokastudio:end/utils/damage/player_continue_checks

execute if score #should_continue foka.misc matches 1 run function fokastudio:end/utils/damage/start
