playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 1.25
particle explosion ~ ~ ~

scoreboard players set in foka.misc 1
scoreboard players set in1 foka.misc 10
function fokastudio:end/utils/rng/range

execute if score out foka.misc matches 1..9 run summon firework_rocket ~ ~0.4 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{foka.prismatic_blast:1b,Fireworks:{Explosions:[{Type:0,Trail:0,Flicker:0,Colors:[I;16742259,12746239,9371524,16774538,8439551,15954431,16751707]}],Flight:1}}}}

execute if score out foka.misc matches 10 run summon firework_rocket ~ ~0.4 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{foka.prismatic_blast:1b,Fireworks:{Explosions:[{Type:0,Trail:0,Flicker:1,Colors:[I;16742259,12746239,9371524,16774538,8439551,15954431,16751707]},{Type:0,Trail:0,Flicker:1,Colors:[I;16742259,12746239,9371524,16774538,8439551,8439551,16751707]},{Type:0,Trail:0,Flicker:1,Colors:[I;16742259,12746239,9371524,16774538,8439551,15954431,16751707]},{Type:0,Trail:0,Flicker:1,Colors:[I;16742259,12746239,9371524,16774538,8439551,15954431,16751707]},{Type:0,Trail:0,Flicker:1,Colors:[I;16742259,12746239,9371524,16774538,8439551,15954431,16751707]}],Flight:1}}}}

tag @a[distance=..64] add foka.items.prismatic_punch.stopsound
schedule function fokastudio:end/items/prismatic_punch/detonate/stopsound 2t append

kill @s
