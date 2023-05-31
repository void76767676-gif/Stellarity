scoreboard players remove @s foka.items.spellbook.light.cooldown 2
execute if score @s foka.items.spellbook.light.cooldown matches 1..2 at @s run function fokastudio:end/items/spellbooks/light/ready
