data modify storage stellarity:temp object set from entity @s Inventory[{Slot:103b}]

execute store result score $player.temp_0 stellarity.misc run data get storage stellarity:temp object.tag.Damage
execute store result score $player.temp_1 stellarity.misc run data get storage stellarity:temp object.tag.stellar_durability.damage
execute unless score $player.temp_0 stellarity.misc = $player.temp_1 stellarity.misc run function stellarity:utils/durability/damage/helmet
