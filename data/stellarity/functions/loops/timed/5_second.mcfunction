execute as @e[type=#minecraft:raiders,predicate=stellarity:locations/in_stronghold,tag=!stellarity.stronghold.buffed] run function stellarity:mobs/stronghold/illager_semi_switch_case

execute as @e[type=slime,tag=stellarity.gloop] at @s run function stellarity:mobs/gloop/main

schedule function stellarity:loops/timed/5_second 5s
