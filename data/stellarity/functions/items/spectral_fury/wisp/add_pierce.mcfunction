scoreboard players add @s stellarity.items.spectral_fury.pierce_count 1

function kohara:reduce_by_percent {holder:"@s",score:"stellarity.items.spectral_fury.damage",percent:35}

#particle firework ~ ~ ~ 0 0 0 0.05 8 normal
particle soul_fire_flame ~ ~ ~ 0 0 0 0.05 6 normal
playsound minecraft:entity.shulker_bullet.hurt player @a[distance=0..] ~ ~ ~ 1 1.15
playsound minecraft:entity.shulker_bullet.hurt player @a[distance=0..] ~ ~ ~ 1 0.85

execute if score @s stellarity.items.spectral_fury.pierce_count matches 3 run function stellarity:items/spectral_fury/wisp/remove
