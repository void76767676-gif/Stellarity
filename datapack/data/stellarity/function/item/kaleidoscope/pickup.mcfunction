# Revoke advancement so it can trigger on pickup
advancement revoke @s only stellarity:event/item/pickup_kaleidoscope

# Apply 3-second pickup post effect
posteffect add @s custom:pickup
schedule function stellarity:item/pickup/end_posteffect 3s

# Play epic pickup sound
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.8 1.4
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.7 1.1

# Display title in center of screen
title @s times 5 50 15
title @s title ["\n",{"translate":"item.stellarity.kaleidoscope","color":"#FFD700","bold":true}]
title @s subtitle [{"translate":"message.stellarity.epic_pickup","color":"#FFE58F","italic":true}]
