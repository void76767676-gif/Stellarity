execute unless score @s foka.items.tamaris.execute_cooldown matches 1.. if predicate fokastudio:end/utils/player/is_sneaking run tag @s add foka.items.tamaris.doing_execute
execute if score @s[tag=!foka.items.tamaris.no_warn] foka.items.tamaris.execute_cooldown matches 1.. run title @s actionbar {"text":"DISABLED","color":"red"}
