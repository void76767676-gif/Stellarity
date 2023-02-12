execute facing entity @p[tag=foka.items.tamaris.doing_execute] eyes rotated ~ 0 run function fokastudio:end/items/tamaris/execute/animation/as_entity/facing_player

playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.4 1.06

execute anchored eyes run particle explosion ^ ^-0.2 ^
execute anchored eyes run particle end_rod ^ ^-0.2 ^ 0 0 0 0.08 15
execute anchored eyes run particle firework ^ ^-0.2 ^ 0 0 0 0.08 15
