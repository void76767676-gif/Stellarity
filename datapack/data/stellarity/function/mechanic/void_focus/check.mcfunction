# Checks dragon death status and tracks timer for The Void Gains Focus event
execute unless score #stellarity.void_focus stellarity.void_focus.dragon_timer matches 1.. if score #stellarity.exit_gateway_count stellarity.misc matches 1.. run scoreboard players set #stellarity.void_focus stellarity.void_focus.dragon_timer 1
execute unless score #stellarity.void_focus stellarity.void_focus.dragon_timer matches 1.. if entity @e[type=marker,tag=stellarity.exit_portal,scores={stellarity.dragon.times_killed=1..}] run scoreboard players set #stellarity.void_focus stellarity.void_focus.dragon_timer 1

execute if score #stellarity.void_focus stellarity.void_focus.dragon_timer matches 1.. run scoreboard players add #stellarity.void_focus stellarity.void_focus.dragon_timer 1

# 1800 seconds = 30 minutes
execute if score #stellarity.void_focus stellarity.void_focus.dragon_timer matches 1800.. run function stellarity:mechanic/void_focus/handle_cooldown
