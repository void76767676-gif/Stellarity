advancement revoke @s only fokastudio:end/events/items/perm_buffs/eat_chaos_fruit

tag @s add foka.perm_buffs.chaos_fruit

playsound minecraft:item.trident.riptide_1 player @a ~ ~ ~ 0.66 1.2
playsound minecraft:entity.illusioner.mirror_move player @a ~ ~ ~ 1 1.2
particle end_rod ~ ~1 ~ 0 0 0 0.07 15
particle firework ~ ~1 ~ 0 0 0 0.07 15
function fokastudio:end/items/perm_buffs/chaos_fruit/apply_buff
