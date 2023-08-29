execute as @e[type=marker,limit=1,sort=nearest,tag=stellarity.natures_wrath.spirit] at @s run function stellarity:items/spellbooks/natures_wrath/spirit/damage/as_marker/swamp

scoreboard players set #damage stellarity.misc 60

scoreboard players set #armor_penetration stellarity.misc 20
scoreboard players set #ignore_iframes stellarity.misc 1

tag @s add stellarity.damage.natures_wrath

effect give @s slowness 5 0 true

# Extra strong knockback
execute unless entity @s[type=player] run function stellarity:items/spellbooks/natures_wrath/spirit/damage/swamp_knockback

function stellarity:utils/damage/start
