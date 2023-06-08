scoreboard players set #cooldown foka.misc 24
scoreboard players set #2 foka.misc 2

scoreboard players set #upgrades foka.misc 0
execute if entity @s[advancements={fokastudio:end/events/items/spellbooks/natures_wrath/been_to_forest=true}] run scoreboard players add #upgrades foka.misc 1
execute if entity @s[advancements={fokastudio:end/events/items/spellbooks/natures_wrath/been_to_nether=true}] run scoreboard players add #upgrades foka.misc 1
execute if entity @s[advancements={fokastudio:end/events/items/spellbooks/natures_wrath/been_to_ocean=true}] run scoreboard players add #upgrades foka.misc 1
execute if entity @s[advancements={fokastudio:end/events/items/spellbooks/natures_wrath/been_to_mountains=true}] run scoreboard players add #upgrades foka.misc 1
execute if entity @s[advancements={fokastudio:end/events/items/spellbooks/natures_wrath/been_to_jungle=true}] run scoreboard players add #upgrades foka.misc 1
execute if entity @s[advancements={fokastudio:end/events/items/spellbooks/natures_wrath/been_to_snow=true}] run scoreboard players add #upgrades foka.misc 1
execute if entity @s[advancements={fokastudio:end/events/items/spellbooks/natures_wrath/been_to_sculk=true}] run scoreboard players add #upgrades foka.misc 1
execute if entity @s[advancements={fokastudio:end/events/items/spellbooks/natures_wrath/been_to_hallow=true}] run scoreboard players add #upgrades foka.misc 1
execute if entity @s[advancements={fokastudio:end/events/items/spellbooks/natures_wrath/been_to_swamp=true}] run scoreboard players add #upgrades foka.misc 1

scoreboard players operation #temp foka.misc = #upgrades foka.misc
scoreboard players operation #temp foka.misc /= #2 foka.misc
scoreboard players operation #cooldown foka.misc -= #temp foka.misc
scoreboard players operation @s foka.items.spellbook.natures_wrath.cooldown.shoot = #cooldown foka.misc

execute at @s anchored eyes positioned ^ ^ ^ rotated as @s summon marker run function fokastudio:end/items/spellbooks/natures_wrath/spirit/choose_property

#function fokastudio:end/items/spellbooks/effects_all

playsound minecraft:item.book.page_turn player @a ~ ~1 ~ 1 1
particle enchant ~ ~1 ~ .3 .55 .3 0 30 normal

playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 1 1
