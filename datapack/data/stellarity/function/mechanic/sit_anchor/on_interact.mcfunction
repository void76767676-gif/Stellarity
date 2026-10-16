# When interaction entity is clicked by player

data remove entity @s interaction
execute as @p[distance=..3.5] at @s run function stellarity:mechanic/sit_anchor/sit_here
kill @s
