scoreboard players set #slime foka.misc 0
execute if predicate fokastudio:end/utils/chance/10percent run scoreboard players set #slime foka.misc 1

execute if score #slime foka.misc matches 0 run function fokastudio:end/mobs/warped_drowned/spawn
execute if score #slime foka.misc matches 1 run function fokastudio:end/mobs/warped_slime/spawn

execute on vehicle run tp @s ~ -1000 ~
tp @s ~ -1000 ~

