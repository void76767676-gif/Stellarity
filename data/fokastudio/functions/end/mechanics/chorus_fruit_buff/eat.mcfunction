advancement revoke @s only fokastudio:end/events/eat_chorus_fruit

# Saturation
effect give @s saturation 1 0 true

particle dust_color_transition 0.435 0 1 1 0.898 0.122 1 ~ ~1 ~ .3 .55 .3 0 80 force

tag @s add foka.chorus_fruit_buff.scheduled
schedule function fokastudio:end/mechanics/chorus_fruit_buff/scheduled 1t
