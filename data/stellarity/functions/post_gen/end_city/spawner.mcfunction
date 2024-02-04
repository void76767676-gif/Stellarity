fill ~ ~-1 ~ ~ ~1 ~ air replace observer
setblock ~ ~ ~ air

#execute store result score #random stellarity.misc run random value 1..20

setblock ~ ~ ~ spawner{SpawnCount:2,MaxNearbyEntities:3,SpawnRange:6,Delay:100,MinSpawnDelay:400,MaxSpawnDelay:800,RequiredPlayerRange:8,SpawnData:{entity:{id:"minecraft:wither_skeleton"}}} replace
