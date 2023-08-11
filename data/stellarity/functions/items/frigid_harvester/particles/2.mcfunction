particle minecraft:falling_dust ice ~ ~1 ~ 0.35 0.6 0.35 0 1 normal

execute if predicate stellarity:utils/chance/25percent run \
    particle minecraft:enchant ~ ~1.5 ~ 0 0 0 1 2 normal

execute if predicate stellarity:utils/chance/14percent run \
	particle minecraft:sculk_soul ~ ~1 ~ 0 0 0 0.04 1
