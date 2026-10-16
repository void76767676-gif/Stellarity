# Seated player tick (runs per sitting player)

# Check if player dismounted (Shift or damaged out)
execute unless data entity @s RootVehicle run function stellarity:mechanic/sit_anchor/leave

# Health regeneration timer
scoreboard players add @s stellarity.sit_timer 1

# Gradual health recovery every 20 ticks (1 second)
execute if score @s stellarity.sit_timer matches 20.. run function stellarity:mechanic/sit_anchor/heal_step
