advancement revoke @s only fokastudio:end/events/items/spellbooks/use_light
recipe take @s fokastudio:end/events/spellbooks/use_light

execute unless score @s foka.items.spellbook.light.cooldown matches 1.. at @s run function fokastudio:end/items/spellbooks/light/spawn_aura

tag @s[gamemode=!creative,gamemode=!spectator] add foka.give_back.spellbooks.light
schedule function fokastudio:end/items/spellbooks/light/give_back/scheduled 2t append
