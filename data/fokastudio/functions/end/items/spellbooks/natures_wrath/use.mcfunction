advancement revoke @s only fokastudio:end/events/items/spellbooks/use_natures_wrath
recipe take @s fokastudio:end/events/spellbooks/use_natures_wrath

execute unless score @s foka.items.spellbook.natures_wrath.cooldown.shoot matches 1.. unless predicate fokastudio:end/utils/player/is_sneaking at @s run function fokastudio:end/items/spellbooks/natures_wrath/shoot_spirit
execute unless score @s foka.items.spellbook.natures_wrath.cooldown.wolves matches 1.. if predicate fokastudio:end/utils/player/is_sneaking at @s run function fokastudio:end/items/spellbooks/natures_wrath/summon_wolves

tag @s[gamemode=!creative,gamemode=!spectator] add foka.give_back.spellbooks.natures_wrath
schedule function fokastudio:end/items/spellbooks/natures_wrath/give_back/scheduled 2t append
