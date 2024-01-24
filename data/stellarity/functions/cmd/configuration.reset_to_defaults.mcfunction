scoreboard players set #stellarity.config stellarity.config.join_message 1
scoreboard players set #stellarity.config stellarity.config.always_generate_egg 0
scoreboard players set #stellarity.config stellarity.config.dragon_health 300
scoreboard players set #stellarity.config stellarity.config.eol_health 500
scoreboard players set #stellarity.config stellarity.config.allow_disenchanting 1
scoreboard players set #stellarity.config stellarity.config.enable_treasure_heads 1
scoreboard players set #stellarity.config stellarity.config.track_loop_delay.eol 3800
scoreboard players set #stellarity.config stellarity.config.track_loop_delay.dragon 4230

function stellarity:utils/tellraw/command {string:"stellarity.messages.cmd.reset_config_to_default",fallback:"All configs have been reset to default"}

function kohara:send_command_feedback/off
