advancement revoke @s only fokastudio:end/events/mobs/get_hit_by_endermite

playsound fokastudio:entity.endermite.attack hostile @a ~ ~ ~

execute if score #difficulty foka.misc matches 3 run effect give @s nausea 9 0 false