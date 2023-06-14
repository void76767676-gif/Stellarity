data modify storage stellarity:temp aery_sword.lore set from entity @s SelectedItem.tag.display.Lore
data remove storage stellarity:temp aery_sword.lore[-1]

execute store result score #damage stellarity.misc run data get entity @s SelectedItem.tag."stellarity.aery_sword.damage" 100

execute if entity @s[advancements={stellarity:events/items/kill_with_aery_sword={minor=true}}] run scoreboard players set #damage_extra stellarity.misc 7
execute if entity @s[advancements={stellarity:events/items/kill_with_aery_sword={small=true}}] run scoreboard players set #damage_extra stellarity.misc 14
execute if entity @s[advancements={stellarity:events/items/kill_with_aery_sword={big=true}}] run scoreboard players set #damage_extra stellarity.misc 29
execute if entity @s[advancements={stellarity:events/items/kill_with_aery_sword={large=true}}] run scoreboard players set #damage_extra stellarity.misc 43
execute if entity @s[advancements={stellarity:events/items/kill_with_aery_sword={huge=true}}] run scoreboard players set #damage_extra stellarity.misc 188

# Contants
scoreboard players set #3 stellarity.misc 3
scoreboard players set #100 stellarity.misc 100
scoreboard players set #700 stellarity.misc 700

# Softcap
# Damage formula is kinda wonky
# Base number is taken from above and then it is transformed
# How? Basically it is divided by (damage/100)
# So just basically for every 1 damage it gets divided by a growing number
# Scaling actually starts from +2 damage, bcs before it 
# either doesn't get divided (0) or is divided by 1
# Additionaly, if the damage gain is lower than 0.02, it is cancelled completely
# After reaching +9 damage, the amount of awarded damage is cut in third
# This applies AFTER the initial scaling!
# Same happens after +11, +13 and +15 however I don't think someone would actually
# grind Withers just to get that 0.1 extra damage...
scoreboard players operation #temp3 stellarity.misc = #damage stellarity.misc
scoreboard players operation #temp3 stellarity.misc /= #100 stellarity.misc
scoreboard players operation #damage_extra stellarity.misc /= #temp3 stellarity.misc

execute if score #damage stellarity.misc matches 900.. run scoreboard players operation #damage_extra stellarity.misc /= #3 stellarity.misc
execute if score #damage stellarity.misc matches 1100.. run scoreboard players operation #damage_extra stellarity.misc /= #3 stellarity.misc
execute if score #damage stellarity.misc matches 1300.. run scoreboard players operation #damage_extra stellarity.misc /= #3 stellarity.misc
execute if score #damage stellarity.misc matches 1500.. run scoreboard players operation #damage_extra stellarity.misc /= #3 stellarity.misc

execute unless score #damage_extra stellarity.misc matches 0 run function stellarity:items/frigid_harvester/continue

# Advancement for getting +9 damage
execute if score #damage stellarity.misc matches 900.. run advancement grant @s only stellarity:exploration/max_out_aery_sword

tag @s add stellarity.items.frigid_harvester.remove_adv
schedule function stellarity:items/frigid_harvester/remove_adv/schedule 1t append
