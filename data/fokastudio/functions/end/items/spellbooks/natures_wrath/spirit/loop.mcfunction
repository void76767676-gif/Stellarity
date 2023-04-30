scoreboard players add @s foka.misc 1

execute unless block ^ ^ ^ #fokastudio:end/non_solid run kill @s

execute anchored eyes unless entity @e[type=!#fokastudio:end/invalid_targets_with_player,type=!wolf,type=!cat,limit=1,sort=nearest,distance=..6] run function fokastudio:end/items/spellbooks/natures_wrath/spirit/move
execute anchored eyes facing entity @e[type=!#fokastudio:end/invalid_targets_with_player,type=!wolf,type=!cat,limit=1,sort=nearest,distance=..6] eyes anchored eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^3.5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run function fokastudio:end/items/spellbooks/natures_wrath/spirit/move



execute if score @s foka.misc matches 4.. as @a[distance=..3.5,limit=1,sort=nearest,predicate=!fokastudio:end/items/spellbooks/holding_natures_wrath] at @s run function fokastudio:end/items/spellbooks/natures_wrath/spirit/damage

execute if entity @e[type=!#fokastudio:end/invalid_targets_with_player,type=!wolf,type=!cat,distance=..3.5] run function fokastudio:end/items/spellbooks/natures_wrath/spirit/damage

execute if score @s foka.misc matches 2.. run function fokastudio:end/items/spellbooks/natures_wrath/spirit/particles

execute if score @s foka.misc matches 25.. unless entity @e[type=!#fokastudio:end/invalid_targets_with_player,limit=1,sort=nearest,distance=..6] run particle explosion
execute if score @s foka.misc matches 25.. unless entity @e[type=!#fokastudio:end/invalid_targets_with_player,limit=1,sort=nearest,distance=..6] run kill @s
