tag @s remove foka.items.tamaris.in_execute

execute at @s run function fokastudio:end/items/tamaris/execute/animation/as_entity/at_self

advancement grant @p[tag=foka.items.tamaris.doing_execute] only fokastudio:end/dragons_den/disassembly
execute if entity @s[type=warden] run advancement grant @p[tag=foka.items.tamaris.doing_execute] only fokastudio:end/dragons_den/kill_la_kill

function fokastudio:end/items/tamaris/execute/super_hyper_extra_heavy_damage_you_cannot_survive
