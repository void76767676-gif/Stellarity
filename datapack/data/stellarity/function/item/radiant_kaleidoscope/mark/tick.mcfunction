# Ticked each tick for marked entity @s

# Check if entity died
execute if data entity @s {Health:0f} run return run function stellarity:item/radiant_kaleidoscope/mark/kill

# Countdown mark timer
scoreboard players remove @s stellarity.item.rk.mark_timer 1

# Check timeout
execute if score @s stellarity.item.rk.mark_timer matches ..0 run return run function stellarity:item/radiant_kaleidoscope/mark/timeout

# Render visuals
function stellarity:item/radiant_kaleidoscope/mark/render
