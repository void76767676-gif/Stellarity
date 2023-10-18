scoreboard players set #damage stellarity.misc 200

# Ignore X% of entity armor (default: 0)
scoreboard players set #armor_penetration stellarity.misc 33

# Whether to ignore I-frames (default: false)
scoreboard players set #ignore_iframes stellarity.misc 0

# How efficient melee damage bonuses are
# If a player had a 100% damage increase (200% damage per hit),
# setting this variable to 40 would treat it as a 40% increase instead
scoreboard players set #damage_boost_efficiency stellarity.misc 0

# Tag for damage cause
tag @s add stellarity.damage.example_cause

# Entities with this tag will be the ones
# from whose direction knockback is going to come from
tag @s add stellarity.damage.attacker

function stellarity:utils/damage/start
