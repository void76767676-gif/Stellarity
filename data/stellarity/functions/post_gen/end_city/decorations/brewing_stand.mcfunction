execute if predicate kohara:chance/33percent run loot replace block ~ ~-1 ~ container.0 loot stellarity:end_city/random_potions
execute if predicate kohara:chance/33percent run loot replace block ~ ~-1 ~ container.1 loot stellarity:end_city/random_potions
execute if predicate kohara:chance/33percent run loot replace block ~ ~-1 ~ container.2 loot stellarity:end_city/random_potions

execute store result score #random stellarity.misc run random value 0..20

execute store result block ~ ~-1 ~ Fuel byte 1 run scoreboard players get #random stellarity.misc

setblock ~ ~ ~ air
fill ~-1 ~ ~-1 ~1 ~1 ~1 air replace observer
