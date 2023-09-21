scoreboard players add @s stellarity.status_effect.voided.particle 1
scoreboard players remove @s stellarity.status_effect.voided.time 1

execute if score @s stellarity.status_effect.voided.particle matches 2 run function stellarity:utils/status_effects/voided/particle

execute if score @s stellarity.status_effect.voided.time matches 0 run function stellarity:utils/status_effects/voided/remove
