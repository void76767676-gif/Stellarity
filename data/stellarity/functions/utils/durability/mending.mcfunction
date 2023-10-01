execute store result storage stellarity:temp object.tag.stellar_durability.dur int 1 run scoreboard players get $player.temp_0 stellarity.misc
execute store result storage stellarity:temp object.tag.Damage int 1 run scoreboard players get $player.temp_4 stellarity.misc
execute store result storage stellarity:temp object.stellar_durability.damage int 1 run scoreboard players get $player.temp_4 stellarity.misc
data modify storage stellarity:temp object.tag.stellar_durability.init set value 0b
data remove storage stellarity:temp object.tag.display.Lore[-1]

scoreboard players set #mended stellarity.misc 1
