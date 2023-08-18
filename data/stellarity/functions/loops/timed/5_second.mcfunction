function stellarity:mobs/stronghold/main

execute as @e[type=slime,tag=stellarity.gloop] at @s run function stellarity:mobs/gloop/main

schedule function stellarity:loops/timed/5_second 5s
