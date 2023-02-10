execute if entity @s[advancements={fokastudio:end/events/items/shoot_prismatic_punch={normal=true}}] run function fokastudio:end/items/prismatic_punch/shoot_event/normal
execute if entity @s[advancements={fokastudio:end/events/items/shoot_prismatic_punch={multishot=true}}] run function fokastudio:end/items/prismatic_punch/shoot_event/multishot

advancement revoke @s only fokastudio:end/events/items/shoot_prismatic_punch
