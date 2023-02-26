scoreboard players set #continue foka.misc 0
execute if entity @e[type=!#fokastudio:end/invalid_targets_with_player,distance=..9,tag=!foka.prismatic_blast.pierced] run scoreboard players set #continue foka.misc 1

execute if predicate fokastudio:end/utils/chance/33percent run scoreboard players set #continue foka.misc 0

execute if score #continue foka.misc matches 1 run scoreboard players set #hit foka.misc 0
scoreboard players set #distance foka.misc 0

execute if score #continue foka.misc matches 1 facing entity @e[type=!#fokastudio:end/invalid_targets_with_player,distance=..9,tag=!foka.prismatic_blast.pierced,sort=nearest,limit=1] eyes run function fokastudio:end/items/prismatic_punch/detonate/piercing/ray