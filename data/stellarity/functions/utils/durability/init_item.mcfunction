data modify storage stellarity:temp object.tag.stellar_durability.dur set from storage stellarity:temp object.tag.stellar_durability.max_dur
data modify storage stellarity:temp object.tag.stellar_durability.damage set value 0
execute unless data storage stellarity:temp object.tag.display.Lore run data modify storage stellarity:temp object.tag.display.Lore set value []
execute unless data storage stellarity:temp {object:{tag:{stellar_durability:{init:0b}}}} run data modify storage stellarity:temp object.tag.display.Lore append value '{}'
data modify storage stellarity:temp object.tag.stellar_durability.init set value 1b
