loot give @s loot fokastudio:end/treasure_heads

tellraw @s ["\n",{"translate":"foka.messages.cmd.get_random_head","fallback":"Gave a random 'Treasure Head', out of a total of 60","color":"#DD6AFF","bold":true},"\n"]
function fokastudio:end/utils/send_command_feedback/off
