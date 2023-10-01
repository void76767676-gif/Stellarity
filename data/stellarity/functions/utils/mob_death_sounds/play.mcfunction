kill @s

data modify storage stellarity:temp mob_death_sound_id set from storage stellarity:temp item_nbt.Item.tag."stellarity.custom_mob_death_sound_id"

execute if data storage stellarity:temp {mob_death_sound_id:"pixie"} run function stellarity:mobs/pixie/sounds/death
