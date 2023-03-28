advancement revoke @s only fokastudio:end/events/mobs/get_hit_by_enderman

playsound fokastudio:entity.enderman.attack hostile @a ~ ~ ~

execute if score #difficulty foka.misc matches 2 if predicate fokastudio:end/utils/chance/20percent run effect give @s darkness 6 0 false
execute if score #difficulty foka.misc matches 3 if predicate fokastudio:end/utils/chance/20percent run effect give @s darkness 9 0 false
