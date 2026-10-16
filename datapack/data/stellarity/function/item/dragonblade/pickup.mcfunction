# Revoke advancement so it can trigger on pickup
advancement revoke @s only stellarity:event/item/pickup_dragonblade

# Apply 3-second pickup post effect
posteffect add @s custom:pickup
schedule function stellarity:item/pickup/end_posteffect 3s

# Play epic pickup sound
playsound stellarity:misc.victory_core_bling player @s ~ ~ ~ 1.0 1.0
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.7 1.1

# Display title in center of screen
title @s times 5 50 15
title @s title ["\n",{"translate":"item.stellarity.dragonblade","color":"#AF4BFF","bold":true}]
title @s subtitle [{"translate":"message.stellarity.epic_pickup","color":"#EAA7FF","italic":true}]
