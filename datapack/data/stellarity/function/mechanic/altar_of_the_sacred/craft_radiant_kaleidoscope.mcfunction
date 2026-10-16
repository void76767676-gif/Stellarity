# Reset counts
scoreboard players set #glowstone stellarity.misc 0
scoreboard players set #soot stellarity.misc 0
scoreboard players set #kaleidoscope stellarity.misc 0
scoreboard players set #jewels stellarity.misc 0

# Count dropped items near altar
execute as @e[type=item,distance=..2.0] run function stellarity:mechanic/altar_of_the_sacred/craft/count_item

# Check if recipe is satisfied:
# 3 stacks glowstone (192) + 48 soot + 1 kaleidoscope + 3 radiant jewels
execute unless score #glowstone stellarity.misc matches 192.. run return 0
execute unless score #soot stellarity.misc matches 48.. run return 0
execute unless score #kaleidoscope stellarity.misc matches 1.. run return 0
execute unless score #jewels stellarity.misc matches 3.. run return 0

# Prevent interference with Empress of Light ascension animation
execute if entity @e[type=item,tag=stellarity.altar_of_the_sacred.ascending,distance=..3.0] run return 0

# All recipe requirements met! Run the sacred ceremony!
function stellarity:mechanic/altar_of_the_sacred/craft/ceremony
