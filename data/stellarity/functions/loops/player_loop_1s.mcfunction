# Shulker Tools
execute if entity @s[predicate=stellarity:items/holding_any_shulker_tool] run effect give @s haste 1 0 true

execute if entity @s[scores={stellarity.items.flask_of_frost.duration=1..}] run scoreboard players remove @s stellarity.items.flask_of_frost.duration 1

# Duskberry Night Vision
execute if entity @s[predicate=stellarity:items/holding_duskberry] run effect give @s night_vision 11 0 true

scoreboard players reset @s stellarity.misc.loop.1s
