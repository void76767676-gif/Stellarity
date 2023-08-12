# This happens every 10 seconds btw

#playsound block.beacon.ambient block @a ~ ~ ~ .4 0

execute store result score #ran stellarity.misc run random value 1..5

execute if score #ran stellarity.misc matches 1..5 \
	if predicate stellarity:utils/chance/33percent run \
	playsound minecraft:entity.ender_dragon.growl block @a ~ ~ ~ 0.065 1

execute if score #ran stellarity.misc matches 2 run \
	playsound block.respawn_anchor.ambient block @a ~ ~ ~ 1 0.5
execute if score #ran stellarity.misc matches 3 run \
	playsound block.respawn_anchor.ambient block @a ~ ~ ~ 1 0.55
execute if score #ran stellarity.misc matches 4 run \
	playsound block.respawn_anchor.ambient block @a ~ ~ ~ 1 0.6
execute if score #ran stellarity.misc matches 5 run \
	playsound block.respawn_anchor.ambient block @a ~ ~ ~ 1 0.65
