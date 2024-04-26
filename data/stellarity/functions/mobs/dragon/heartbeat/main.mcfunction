scoreboard players add @s stellarity.dragon.heartbeat 1

execute if score @s[tag=!stellarity.at_portal] stellarity.dragon.health_percent matches 16..20 if score @s stellarity.dragon.heartbeat matches 30.. run function stellarity:mobs/dragon/heartbeat/beat
execute if score @s[tag=!stellarity.at_portal] stellarity.dragon.health_percent matches 11..15 if score @s stellarity.dragon.heartbeat matches 24.. run function stellarity:mobs/dragon/heartbeat/beat
execute if score @s[tag=!stellarity.at_portal] stellarity.dragon.health_percent matches 6..10 if score @s stellarity.dragon.heartbeat matches 19.. run function stellarity:mobs/dragon/heartbeat/beat
execute if score @s[tag=!stellarity.at_portal] stellarity.dragon.health_percent matches 1..5 if score @s stellarity.dragon.heartbeat matches 14.. run function stellarity:mobs/dragon/heartbeat/beat

execute if entity @s[tag=stellarity.at_portal] if score @s stellarity.dragon.heartbeat matches 8.. run function stellarity:mobs/dragon/heartbeat/beat
