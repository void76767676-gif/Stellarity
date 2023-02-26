advancement revoke @s only fokastudio:end/events/items/spellbooks/use_updraft
recipe take @s fokastudio:end/events/spellbooks/use_updraft

execute unless score @s foka.items.spellbook.updraft.cooldown matches 1.. at @s run function fokastudio:end/items/spellbooks/updraft/boost

tag @s[gamemode=!creative,gamemode=!spectator] add foka.give_back.spellbooks.updraft
schedule function fokastudio:end/items/spellbooks/updraft/give_back/scheduled 2t append
