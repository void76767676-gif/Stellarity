tp @p[tag=stellarity.items.tamaris.doing_execute] ^ ^.1 ^1.25
particle sweep_attack ^ ^1.05 ^0.95

tag @p[tag=stellarity.items.tamaris.doing_execute] add stellarity.items.tamaris.scheduled

execute positioned ^ ^ ^1.25 run function stellarity:items/tamaris/execute/animation/teleport_particles
