advancement revoke @s only stellarity:events/items/eat_golden_chorus_fruit

spreadplayers ~ ~ 0 1500 true @s

tag @s add stellarity.items.golden_chorus_fruit.scheduled
schedule function stellarity:items/golden_chorus_fruit/scheduled 2t
