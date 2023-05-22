function #fokastudio:end/dot/tick

# All 'as @a at @s' utility checks happen every 10th tick

execute as @e[type=#fokastudio:end/entity_awareness_checks,tag=!foka.aware] run tag @s add foka.aware

# Scoreboard event reset
execute as @a[predicate=fokastudio:end/utils/has_utility_scoreboards] run function fokastudio:end/utils/reset_scoreboards

# Respawn detection
# @s, @e and @a will always select a player, dead or alive
# By doing '@e[type=player]', it will only select ones who are alive
# Weird, but it works!
execute as @e[type=player,scores={foka.misc.respawn_detection=1..}] run function fokastudio:end/utils/respawn_detection/on_respawn

execute as @e[type=item,nbt={Item:{id:"minecraft:structure_void",tag:{foka.custom_mob_death_sound:1b}}}] at @s run function fokastudio:end/utils/custom_mob_death_sounds/death
