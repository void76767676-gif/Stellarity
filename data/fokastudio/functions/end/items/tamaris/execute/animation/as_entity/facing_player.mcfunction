tp @p[tag=foka.items.tamaris.doing_execute] ^ ^.1 ^1.25
particle sweep_attack ^ ^1.05 ^0.95

tag @p[tag=foka.items.tamaris.doing_execute] add foka.items.tamaris.scheduled
schedule function fokastudio:end/items/tamaris/execute/animation/teleport_particles/scheduled 1t append
