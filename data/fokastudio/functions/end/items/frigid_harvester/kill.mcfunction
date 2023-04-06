data modify storage fokastudio:end/temp aery_sword.lore set from entity @s SelectedItem.tag.display.Lore
data remove storage fokastudio:end/temp aery_sword.lore[-1]

execute store result score #damage foka.misc run data get entity @s SelectedItem.tag."foka.aery_sword.damage" 100

execute if entity @s[advancements={fokastudio:end/events/items/kill_with_aery_sword={minor=true}}] run scoreboard players set #damage_extra foka.misc 4
execute if entity @s[advancements={fokastudio:end/events/items/kill_with_aery_sword={small=true}}] run scoreboard players set #damage_extra foka.misc 11
execute if entity @s[advancements={fokastudio:end/events/items/kill_with_aery_sword={big=true}}] run scoreboard players set #damage_extra foka.misc 28
execute if entity @s[advancements={fokastudio:end/events/items/kill_with_aery_sword={large=true}}] run scoreboard players set #damage_extra foka.misc 52
execute if entity @s[advancements={fokastudio:end/events/items/kill_with_aery_sword={huge=true}}] run scoreboard players set #damage_extra foka.misc 340

# Contants
scoreboard players set #2 foka.misc 2
scoreboard players set #100 foka.misc 100
scoreboard players set #700 foka.misc 700

# Softcap
# Damage formula is kinda wonky
# Base number is taken from above and then it is transformed
# How? Basically it is divided by (damage/100)
# So just basically for every 1 damage it gets divided by a growing number
# Scaling actually starts from +2 damage, bcs before it 
# either doesn't get divided (0) or is divided by 1
# Additionaly, if the damage gain is lower than 0.02, it is cancelled completely
# After reaching +16 damage, the amount of awarded damage is cut in half
# This applies AFTER the initial scaling!
# Same happens after +20, however I don't think someone would actually
# grind Withers just to get that 0.1 extra damage...
scoreboard players operation #temp3 foka.misc = #damage foka.misc
scoreboard players operation #temp3 foka.misc /= #100 foka.misc
scoreboard players operation #damage_extra foka.misc /= #temp3 foka.misc

execute if score #damage foka.misc matches 1400.. run scoreboard players operation #damage_extra foka.misc /= #2 foka.misc
execute if score #damage foka.misc matches 1600.. run scoreboard players operation #damage_extra foka.misc /= #2 foka.misc
execute if score #damage foka.misc matches 1800.. run scoreboard players operation #damage_extra foka.misc /= #2 foka.misc
execute if score #damage foka.misc matches 2000.. run scoreboard players operation #damage_extra foka.misc /= #2 foka.misc

execute unless score #damage_extra foka.misc matches 0 run function fokastudio:end/items/frigid_harvester/continue

# Advancement for getting +12 damage
execute if score #damage foka.misc matches 1200.. run advancement grant @s only fokastudio:end/exploration/max_out_aery_sword

tag @s add foka.items.frigid_harvester.remove_adv
schedule function fokastudio:end/items/frigid_harvester/remove_adv/schedule 1t append
