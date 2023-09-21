scoreboard players operation @s stellarity.status_effect.jinx.time = #effect.duration stellarity.misc
scoreboard players operation @s stellarity.status_effect.jinx.level = #effect.level stellarity.misc

execute store result storage stellarity:temp status_effect.jinx.luck int 1 run scoreboard players get #effect.level stellarity.misc
execute store result storage stellarity:temp status_effect.jinx.armor float 0.2 run scoreboard players get #effect.level stellarity.misc

function stellarity:utils/status_effects/jinx/attributes with storage stellarity:temp status_effect.jinx

playsound minecraft:entity.elder_guardian.curse player @s ~ ~ ~ 0.4 1.2
playsound minecraft:item.armor.equip_netherite player @s ~ ~ ~ 0.8 0
