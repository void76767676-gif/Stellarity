advancement revoke @s only fokastudio:end/events/items/hit_someone_with_shulker_bullet

execute as @e[type=!#fokastudio:end/invalid_targets,limit=1,sort=nearest,nbt={HurtTime:10s}] run tag @s add foka.shulker_armor.scheduled
schedule function fokastudio:end/items/armors/shulker_armor/scheduled 1t append
