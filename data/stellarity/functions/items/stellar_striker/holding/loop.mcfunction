execute if entity @s[tag=!stellarity.holding_stellar_striker] run function stellarity:items/stellar_striker/holding/start

execute if entity @s[tag=!stellarity.holding_stellar_striker.sneaking,predicate=kohara:player/is_sneaking] run function stellarity:items/stellar_striker/holding/sneak/start
execute if entity @s[tag=stellarity.holding_stellar_striker.sneaking,predicate=!kohara:player/is_sneaking] run function stellarity:items/stellar_striker/holding/sneak/stop

execute if entity @s[tag=stellarity.holding_stellar_striker.sneaking] anchored eyes rotated ~ 0 run tp @e[type=interaction,limit=1,sort=nearest,tag=stellarity.stellar_striker] ^ ^-.35 ^
