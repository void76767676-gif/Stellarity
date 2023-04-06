scoreboard players set #mainhand foka.misc 0
execute if predicate fokastudio:end/items/cursed_tome/holding_mainhand run scoreboard players set #mainhand foka.misc 1

scoreboard players set #offhand foka.misc 0
execute if predicate fokastudio:end/items/cursed_tome/holding_offhand run scoreboard players set #offhand foka.misc 1

execute if score #mainhand foka.misc matches 1 run scoreboard players set #offhand foka.misc 0
