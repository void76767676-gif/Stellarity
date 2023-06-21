execute if score @s stellarity.items.kaleidoscope.charge matches 99 at @s run playsound stellarity:item.kaleidoscope.ready player @s ~ ~ ~ 1 1

execute unless score @s stellarity.items.kaleidoscope.charge matches 100.. run scoreboard players add @s stellarity.items.kaleidoscope.charge 1

title @s actionbar [{"text":"•","color":"#EEEEEE"},{"text":" ⭐ ","color":"#FFCF37"},{"score":{"name": "@s","objective": "stellarity.items.kaleidoscope.charge"},"color":"#EEEEEE"},{"text":" ⭐ ","color":"#FFCF37"},{"text":"•","color":"#EEEEEE"}]
