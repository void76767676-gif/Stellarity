execute unless entity @s[tag=foka.items.prismatic_pearl.buffed_velocity] run function fokastudio:end/items/prismatic_pearl/velocity

execute if entity @s[tag=foka.prismatic_pearl.bush] run function fokastudio:end/items/prismatic_pearl/trail/bush
execute if entity @s[tag=!foka.prismatic_pearl.bush] run function fokastudio:end/items/prismatic_pearl/trail/bush

# Starting count from 2nd tick of flight for the sake of visibility
scoreboard players add @s foka.misc 1
