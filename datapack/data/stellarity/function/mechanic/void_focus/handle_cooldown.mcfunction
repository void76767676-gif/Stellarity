# Roll initial cooldown between 300 and 1800 seconds (5 to 30 minutes)
execute unless score #stellarity.void_focus stellarity.void_focus.cooldown matches 1.. store result score #stellarity.void_focus stellarity.void_focus.cooldown run random value 300..1800

# Decrement cooldown each second
scoreboard players remove #stellarity.void_focus stellarity.void_focus.cooldown 1

# Trigger event if cooldown reached 0 and players are present in The End
execute if score #stellarity.void_focus stellarity.void_focus.cooldown matches ..0 if entity @a[predicate=stellarity:location/in_the_end] run function stellarity:mechanic/void_focus/trigger
