function #stellarity:dot/tick

# Respawn detection
# @s, @e and @a will always select a player, dead or alive
# By doing '@e[type=player]', it will only select ones who are alive
# Weird, but it works!
execute as @e[type=player,scores={stellarity.misc.respawn_detection=1..}] run function stellarity:utils/respawn_detection/on_respawn

execute as @e[type=#stellarity:entity_awareness_checks,tag=!stellarity.aware] run tag @s add stellarity.aware
