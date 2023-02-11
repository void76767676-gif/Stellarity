playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 1.25
particle explosion ~ ~ ~

scoreboard players set in foka.misc 1
scoreboard players set in1 foka.misc 10
function fokastudio:end/utils/rng/range

execute if score out foka.misc matches 1..9 run summon firework_rocket ~ ~0.4 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{foka.prismatic_blast:1b,Fireworks:{Explosions:[{Type:0,Trail:0,Flicker:0,Colors:[I;16714241,9375743,3538723,16772661,2399487,15679743,16745006]},{Type:0,Trail:0,Flicker:0,Colors:[I;16714241,9375743,3538723,16772661,2399487,15679743,16745006]}],Flight:1}}}}

execute if score out foka.misc matches 10 run summon firework_rocket ~ ~0.4 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{foka.prismatic_blast:1b,Fireworks:{Explosions:[{Type:0,Trail:0,Flicker:1,Colors:[I;16714241,9375743,3538723,16772661,2399487,15679743,16745006]},{Type:0,Trail:0,Flicker:1,Colors:[I;16714241,9375743,3538723,16772661,2399487,15679743,16745006]},{Type:0,Trail:0,Flicker:1,Colors:[I;16714241,9375743,3538723,16772661,2399487,15679743,16745006]},{Type:0,Trail:0,Flicker:1,Colors:[I;16714241,9375743,3538723,16772661,2399487,15679743,16745006]},{Type:0,Trail:0,Flicker:1,Colors:[I;16714241,9375743,3538723,16772661,2399487,15679743,16745006]}],Flight:1}}}}

tag @a[distance=..64] add foka.items.prismatic_punch.stopsound
schedule function fokastudio:end/items/prismatic_punch/detonate/stopsound 2t append

execute if entity @s[tag=foka.prismatic_blast.piercing] run tag @e[type=!#fokastudio:end/invalid_targets_with_player,sort=nearest,limit=1,tag=!foka.prismatic_blast.pierced] add foka.prismatic_blast.pierced
