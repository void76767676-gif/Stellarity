scoreboard players set #foka.config foka.config.custom_music 1

execute if score #foka.config foka.config.join_message matches 1 run tellraw @a ["\n",{"translate":"foka.messages.load.fabric","fallback":"Fabric Mod Loader detected!\nActivating custom music in The End automatically!","color":"#FFD25B"},"\n"]
