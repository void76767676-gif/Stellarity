tag @s add foka.prismatic_blast.pierced
scoreboard players set #hit foka.misc 1

function fokastudio:end/items/prismatic_punch/detonate/piercing/small_booms

scoreboard players add #times_done foka.misc 1

scoreboard players set #done foka.misc 0
execute if score #times_done foka.misc = #count foka.misc run scoreboard players set #done foka.misc 1

execute if score #done foka.misc matches 0 run function fokastudio:end/items/prismatic_punch/detonate/piercing/target_next
