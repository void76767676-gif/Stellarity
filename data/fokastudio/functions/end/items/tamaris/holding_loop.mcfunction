execute unless score @s foka.items.tamaris.execute_cooldown matches 1.. run function fokastudio:end/items/tamaris/execute/animation/progress
execute if score @s foka.items.tamaris.execute_cooldown matches 1.. run title @s actionbar {"text":"DISABLED","color":"red"}
