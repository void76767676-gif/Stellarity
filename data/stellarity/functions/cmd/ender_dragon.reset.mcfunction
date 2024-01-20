kill @e[type=ender_dragon]
scoreboard players reset @e[type=minecraft:marker,tag=fe.structure,tag=fe.exit_portal] stellarity.dragon.times_killed
scoreboard players reset @e[type=minecraft:marker,tag=fe.structure,tag=fe.exit_portal] stellarity.dragon.times_killed

tag @e[type=minecraft:marker,tag=fe.structure,tag=fe.exit_portal] add fe.deactivated.spawn_dragon

function stellarity:utils/command_tellraw {string:"stellarity.messages.cmd.reset_ender_dragon",fallback:"Reset and respawned the Ender Dragon"}

function kohara:send_command_feedback/off
