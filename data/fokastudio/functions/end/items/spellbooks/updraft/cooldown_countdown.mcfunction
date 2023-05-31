scoreboard players remove @s foka.items.spellbook.updraft.cooldown 2
execute if score @s foka.items.spellbook.updraft.cooldown matches 1..2 at @s run function fokastudio:end/items/spellbooks/updraft/ready
