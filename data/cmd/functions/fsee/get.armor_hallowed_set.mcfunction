loot give @s loot fokastudio:end/items/armors/hallowed_armor/helmet
loot give @s loot fokastudio:end/items/armors/hallowed_armor/chestplate
loot give @s loot fokastudio:end/items/armors/hallowed_armor/leggings
loot give @s loot fokastudio:end/items/armors/hallowed_armor/boots

tellraw @s ["\n",{"translate":"foka.messages.cmd.get_hallowed_armor","fallback":"Gave a full set of Hallowed Armor","color":"#DD6AFF","bold":true},"\n"]
function fokastudio:end/utils/send_command_feedback/off
