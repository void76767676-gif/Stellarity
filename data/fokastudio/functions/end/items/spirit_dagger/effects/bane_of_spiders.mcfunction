scoreboard players set in foka.misc 20
scoreboard players set in1 foka.misc 30

scoreboard players set #10 foka.misc 10
scoreboard players operation #add foka.misc = #bane foka.misc
scoreboard players operation #add foka.misc *= #10 foka.misc

scoreboard players operation in1 foka.misc += #add foka.misc

function fokastudio:end/utils/rng/range

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["foka.items.spirit_dagger.bane"],Effects:[{Id:2,Amplifier:3,Duration:10}],Duration:2,ReapplicationDelay:0,WaitTime:-1,Age:-1}
execute store result entity @e[type=area_effect_cloud,limit=1,sort=nearest,tag=foka.items.spirit_dagger.bane] Effects[{Id:2}].Duration int 1 run scoreboard players get out foka.misc
