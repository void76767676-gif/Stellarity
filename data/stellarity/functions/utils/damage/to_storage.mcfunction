# Constant
scoreboard players set #10 stellarity.misc 10

# temp1 - full
# temp2 - truly a temporar variable
# temp3 - decimal
scoreboard players operation #temp1 stellarity.misc = #damage stellarity.misc
scoreboard players operation #temp2 stellarity.misc = #damage stellarity.misc
scoreboard players operation #temp3 stellarity.misc = #damage stellarity.misc

scoreboard players operation #temp1 stellarity.misc /= #10 stellarity.misc

scoreboard players operation #temp2 stellarity.misc /= #10 stellarity.misc
scoreboard players operation #temp2 stellarity.misc *= #10 stellarity.misc

scoreboard players operation #temp3 stellarity.misc -= #temp2 stellarity.misc

execute store result storage stellarity:temp damage.damage.full int 1 run scoreboard players get #temp1 stellarity.misc
execute store result storage stellarity:temp damage.damage.decimal int 1 run scoreboard players get #temp3 stellarity.misc

# Doing the same for armor penetration

# temp1 - full
# temp2 - truly a temporar variable
# temp3 - decimal
scoreboard players operation #temp1 stellarity.misc = #damage_ap stellarity.misc
scoreboard players operation #temp2 stellarity.misc = #damage_ap stellarity.misc
scoreboard players operation #temp3 stellarity.misc = #damage_ap stellarity.misc

scoreboard players operation #temp1 stellarity.misc /= #10 stellarity.misc

scoreboard players operation #temp2 stellarity.misc /= #10 stellarity.misc
scoreboard players operation #temp2 stellarity.misc *= #10 stellarity.misc

scoreboard players operation #temp3 stellarity.misc -= #temp2 stellarity.misc

execute store result storage stellarity:temp damage.damage_ap.full int 1 run scoreboard players get #temp1 stellarity.misc
execute store result storage stellarity:temp damage.damage_ap.decimal int 1 run scoreboard players get #temp3 stellarity.misc
