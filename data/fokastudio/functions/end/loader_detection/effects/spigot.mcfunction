execute in minecraft:the_end run function fokastudio:end/mechanics/gamerules/change

execute if score #foka.config foka.config.join_message matches 1 run tellraw @a ["\n",{"translate":"foka.messages.load.spigot","fallback":"Spigot/Paper detected!\nAutomatically changing certain gamerules in The End!","color":"#FFD25B"},"\n"]
