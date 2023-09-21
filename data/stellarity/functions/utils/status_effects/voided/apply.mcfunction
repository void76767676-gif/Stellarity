scoreboard players operation @s stellarity.status_effect.voided.time = #effect.duration stellarity.misc
scoreboard players operation @s stellarity.status_effect.voided.level = #effect.level stellarity.misc

execute store result storage stellarity:temp status_effect.voided.value float 0.2 run scoreboard players get #effect.level stellarity.misc

function stellarity:utils/status_effects/voided/attributes with storage stellarity:temp status_effect.voided

playsound stellarity:effect.voided.activate player @a ~ ~ ~ 0.75 1
