scoreboard players operation #cd_sec stellarity.misc = @s stellarity.item.rk.cooldown
scoreboard players add #cd_sec stellarity.misc 19
scoreboard players set #20 stellarity.misc 20
scoreboard players operation #cd_sec stellarity.misc /= #20 stellarity.misc

title @s actionbar [{"text":"⚡ ","color":"#FF5555"},{"text":"Recharging: ","color":"#AAAAAA"},{"score":{"name":"#cd_sec","objective":"stellarity.misc"},"color":"#FFAA00","bold":true},{"text":"s / 48s","color":"#888888"},{"text":" ⚡","color":"#FF5555"}]
