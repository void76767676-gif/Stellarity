## Hallow Mobs
# Pixies
execute as @e[type=vex,predicate=fokastudio:end/locations/biomes/in_the_hallow,tag=!foka.pixie,tag=!foka.aware] at @s run function fokastudio:end/mobs/pixie/vex_to_pixie

execute as @e[type=marker,tag=foka.eol.spawn_animation] at @s run function fokastudio:end/mobs/eol/animations/spawn/loop
execute as @e[type=vindicator,tag=foka.eol] at @s run function fokastudio:end/mobs/eol/main

# Wandering Trader extra End-themed recipe
execute as @e[type=wandering_trader,predicate=!fokastudio:end/locations/in_the_end,tag=!foka.wt_extra_end_trades,tag=!foka.aware,predicate=fokastudio:end/utils/chance/75percent] run function fokastudio:end/mobs/wandering_trader/add_extra_recipe 

# Dragon stuff
execute as @e[type=ender_dragon] at @s run function fokastudio:end/mobs/dragon/main

# Gloop Froggo protection
execute as @e[type=slime,tag=foka.gloop] at @s if entity @e[type=frog,distance=..4] run effect give @s resistance 1 5 true

# Replace Skeletons with either Husks or Strays in certain biomes
execute as @e[type=skeleton,tag=!foka.aware,predicate=fokastudio:end/locations/biomes/in_end_wilds] at @s run function fokastudio:end/mobs/wild_husk/spawn
execute as @e[type=skeleton,tag=!foka.aware,predicate=fokastudio:end/locations/biomes/in_frosted_hills] at @s run function fokastudio:end/mobs/frosted_stray/spawn

execute as @e[type=zombified_piglin,tag=!foka.aware,tag=!foka.flesh_piglin,predicate=fokastudio:end/locations/biomes/in_flesh_tundra] run function fokastudio:end/mobs/flesh_piglin/convert

execute as @e[type=#fokastudio:end/stat_buff,tag=!foka.aware,tag=!foka.buffed,predicate=fokastudio:end/locations/in_the_end] run function fokastudio:end/mobs/stat_buff/main

execute as @e[type=zombie,predicate=fokastudio:end/locations/biomes/in_warped_marsh,tag=!foka.aware] at @s run function fokastudio:end/mobs/warped_marsh_zombie_despawn

# Villagers
execute as @e[type=villager,predicate=fokastudio:end/locations/in_end_village,tag=!foka.villager.aware] at @s run function fokastudio:end/mobs/villager/check
