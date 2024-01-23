scoreboard players set #stellarity.config stellarity.config.join_message 1
scoreboard players set #stellarity.config stellarity.config.always_generate_egg 0
scoreboard players set #stellarity.config stellarity.config.dragon_health 300

function stellarity:utils/tellraw/command {string:"stellarity.messages.cmd.reset_config_to_default",fallback:"All configs have been reset to default"}

function kohara:send_command_feedback/off
