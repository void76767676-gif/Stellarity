function fokastudio:end/items/cursed_tome/get_hand

execute if score #mainhand foka.misc matches 1 run data modify storage fokastudio:end/temp cursed_tome.data set from entity @s SelectedItem.tag.pages
execute if score #offhand foka.misc matches 1 run data modify storage fokastudio:end/temp cursed_tome.data set from entity @s Inventory.[{Slot:-106b}].tag.pages

execute if entity @s[advancements={fokastudio:end/cursed_tome/items/unlock_shulker_things=true}] run function fokastudio:end/items/cursed_tome/update/shulker_stuff
execute if entity @s[advancements={fokastudio:end/cursed_tome/items/unlock_frigid_harvester=true}] run function fokastudio:end/items/cursed_tome/update/frigid_harvester
execute if entity @s[advancements={fokastudio:end/cursed_tome/items/unlock_sabrewing=true}] run function fokastudio:end/items/cursed_tome/update/sabrewing
execute if entity @s[advancements={fokastudio:end/cursed_tome/items/unlock_ancient_armor=true}] run function fokastudio:end/items/cursed_tome/update/ancient_armor
execute if entity @s[advancements={fokastudio:end/cursed_tome/items/unlock_clockwork_crossbow=true}] run function fokastudio:end/items/cursed_tome/update/clockwork_crossbow
execute if entity @s[advancements={fokastudio:end/cursed_tome/items/unlock_hallowed_armor=true}] run function fokastudio:end/items/cursed_tome/update/hallowed_armor
execute if entity @s[advancements={fokastudio:end/cursed_tome/items/unlock_pandoras_barrel=true}] run function fokastudio:end/items/cursed_tome/update/pandoras_barrel
execute if entity @s[advancements={fokastudio:end/cursed_tome/items/unlock_prismatic_pearl=true}] run function fokastudio:end/items/cursed_tome/update/prismatic_punch
execute if entity @s[advancements={fokastudio:end/cursed_tome/items/unlock_prismatic_pearl=true}] run function fokastudio:end/items/cursed_tome/update/prismatic_pearl
execute if entity @s[advancements={fokastudio:end/cursed_tome/items/unlock_sharanga=true}] run function fokastudio:end/items/cursed_tome/update/sharanga
execute if entity @s[advancements={fokastudio:end/cursed_tome/items/unlock_spirit_dagger=true}] run function fokastudio:end/items/cursed_tome/update/spirit_dagger
execute if entity @s[advancements={fokastudio:end/cursed_tome/items/unlock_tamaris=true}] run function fokastudio:end/items/cursed_tome/update/tamaris
execute if entity @s[advancements={fokastudio:end/cursed_tome/items/unlock_zephyr=true}] run function fokastudio:end/items/cursed_tome/update/zephyr
execute if entity @s[advancements={fokastudio:end/cursed_tome/items/spellbooks/unlock_conveyance=true}] run function fokastudio:end/items/cursed_tome/update/spellbooks/conveyance
execute if entity @s[advancements={fokastudio:end/cursed_tome/items/spellbooks/unlock_light=true}] run function fokastudio:end/items/cursed_tome/update/spellbooks/light
execute if entity @s[advancements={fokastudio:end/cursed_tome/items/spellbooks/unlock_updraft=true}] run function fokastudio:end/items/cursed_tome/update/spellbooks/updraft
execute if entity @s[advancements={fokastudio:end/cursed_tome/items/trinkets/unlock_crest_of_the_end=true}] run function fokastudio:end/items/cursed_tome/update/trinkets/crest_of_the_end
execute if entity @s[advancements={fokastudio:end/cursed_tome/items/trinkets/unlock_duskberry=true}] run function fokastudio:end/items/cursed_tome/update/trinkets/duskberry
execute if entity @s[advancements={fokastudio:end/cursed_tome/items/trinkets/unlock_ender_insignia=true}] run function fokastudio:end/items/cursed_tome/update/trinkets/ender_insignia
execute if entity @s[advancements={fokastudio:end/cursed_tome/items/trinkets/unlock_starstruck_carcanet=true}] run function fokastudio:end/items/cursed_tome/update/trinkets/starstruck_carcanet

execute if score #mainhand foka.misc matches 1 run item modify entity @s weapon.mainhand fokastudio:end/cursed_tome_update
execute if score #offhand foka.misc matches 1 run item modify entity @s weapon.offhand fokastudio:end/cursed_tome_update
