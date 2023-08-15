kill @s

loot spawn ~ ~ ~ loot stellarity:treasure_heads_reroll

particle explosion
playsound minecraft:entity.allay.ambient_with_item block @a[distance=0..] ~ ~ ~ 1 1
playsound minecraft:entity.zombie.infect block @a[distance=0..] ~ ~ ~ 1 1
playsound minecraft:entity.zombie.infect block @a[distance=0..] ~ ~ ~ 1 0

tag @e[type=item,limit=1,sort=nearest] add stellarity.rerolled
