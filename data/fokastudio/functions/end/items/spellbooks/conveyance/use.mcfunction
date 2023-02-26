advancement revoke @s only fokastudio:end/events/items/spellbooks/use_conveyance
recipe take @s fokastudio:end/events/spellbooks/use_conveyance

execute unless score @s foka.items.spellbook.conveyance.cooldown matches 1.. at @s run function fokastudio:end/items/spellbooks/conveyance/shoot_bolt

tag @s[gamemode=!creative,gamemode=!spectator] add foka.give_back.spellbooks.conveyance
schedule function fokastudio:end/items/spellbooks/conveyance/give_back/scheduled 2t append
