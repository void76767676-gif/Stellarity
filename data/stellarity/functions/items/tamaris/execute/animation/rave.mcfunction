playsound stellarity:item.tamaris.rave player @a[distance=0..] ~ ~1.05 ~ 1.6 1

effect give @s glowing
team join stellarity.rave_glow @s

schedule function stellarity:items/tamaris/execute/animation/rave_post 1s append

execute at @e[distance=..3] run summon minecraft:area_effect_cloud ~ ~ ~ {effects:[{id:"minecraft:resistance",amplifier:4,duration:5,show_icon:0b,show_particles:0b}],Duration:2,ReapplicationDelay:0,WaitTime:-1,Age:-1}

summon firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1,Trail:1,Colors:[I;11743532,2437522,8073150,4312372,14602026,15435844],FadeColors:[I;11743532,2437522,8073150,4312372,14602026,15435844]},{Type:4,Flicker:1,Trail:1,Colors:[I;11743532,2437522,8073150,4312372,14602026,15435844],FadeColors:[I;11743532,2437522,8073150,4312372,14602026,15435844]},{Type:4,Flicker:1,Trail:1,Colors:[I;11743532,2437522,8073150,4312372,14602026,15435844],FadeColors:[I;11743532,2437522,8073150,4312372,14602026,15435844]}],Flight:0}}}}
