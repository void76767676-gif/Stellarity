execute if data storage kohara:temp {item_nbt:{Item:{id:"minecraft:dragon_egg"}}} run function stellarity:sfx/boss_drop/dragon_egg

# Boss drop items don't despawn
data modify entity @s[tag=stellarity.boss_drop] Age set value -32768s
