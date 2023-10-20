scoreboard players operation @s stellarity.status_effects.voided.time = #effect.duration stellarity.misc
scoreboard players operation @s stellarity.status_effects.voided.level = #effect.level stellarity.misc

execute store result storage stellarity:temp status_effects.voided.value float 0.2 run scoreboard players get #effect.level stellarity.misc

function stellarity:utils/status_effects/voided/attributes with storage stellarity:temp status_effects.voided

playsound stellarity:effect.voided.activate player @a ~ ~ ~ 0.75 1
