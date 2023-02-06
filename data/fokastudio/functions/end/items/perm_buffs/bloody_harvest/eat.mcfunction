advancement revoke @s only fokastudio:end/events/items/perm_buffs/eat_bloody_harvest

tag @s add foka.perm_buffs.bloody_harvest

playsound minecraft:item.trident.riptide_1 player @a ~ ~ ~ 0.66 1.2
playsound minecraft:entity.ravager.stunned player @a ~ ~ ~ .3 1.5
particle end_rod ~ ~1 ~ 0 0 0 0.07 15
particle firework ~ ~1 ~ 0 0 0 0.07 15
function fokastudio:end/items/perm_buffs/bloody_harvest/apply_buff
