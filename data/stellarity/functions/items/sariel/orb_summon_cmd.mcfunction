playsound item.firecharge.use player @a[distance=0..] ~ ~ ~ 1 2
summon marker ^ ^ ^ {Tags:["stellarity.sariel.heal_orb","stellarity.marker"]}

execute as @e[type=marker,tag=stellarity.sariel.heal_orb,sort=nearest] at @s store result entity @s Rotation[0] float 1 run loot spawn ~ ~ ~ loot stellarity:utils/random_rotation
