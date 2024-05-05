scoreboard players operation #damage kohara.misc = @s stellarity.status_effects.echo.damage

function kohara:damage/calculate {armor_penetration:100,damage_boost_efficiency:0,ap_damage_type:"kohara:true_damage",damage_type:"kohara:ignores_iframes",tag:"stellarity.damage.echo"}

playsound minecraft:block.amethyst_block.resonate master @a[distance=0..] ~ ~ ~ 1 0.5
playsound minecraft:block.amethyst_block.resonate master @a[distance=0..] ~ ~ ~ 1 0.75
playsound minecraft:block.amethyst_block.resonate master @a[distance=0..] ~ ~ ~ 1 1

function stellarity:utils/status_effects/echo/remove
