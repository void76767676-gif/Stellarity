scoreboard players reset #attribute.damage.total stellarity.misc
scoreboard players set #100 stellarity.misc 100

# 100x larger than the rest so we can get a nice percentage at the end
execute store result score #attribute.damage.current stellarity.misc run attribute @s minecraft:generic.attack_damage get 10000

execute store result score #attribute.damage.base stellarity.misc run \
	attribute @s minecraft:generic.attack_damage base get 100
execute store result score #attribute.damage.weapon stellarity.misc run \
	attribute @s minecraft:generic.attack_damage modifier value get CB3F55D3-645C-4F38-A497-9C13A33DB5CF 100
execute store result score #attribute.damage.strength stellarity.misc run \
	attribute @s minecraft:generic.attack_damage modifier value get 648D7064-6A60-4F59-8ABE-C2C23A6DD7A9 100
#execute store result score #attribute.damage.weakness stellarity.misc run \
#	attribute @s minecraft:generic.attack_damage modifier value get 22653B89-116E-49DC-9B6B-9971489B5BE5 100

scoreboard players operation #attribute.damage.total stellarity.misc += #attribute.damage.base stellarity.misc
scoreboard players operation #attribute.damage.total stellarity.misc += #attribute.damage.weapon stellarity.misc
scoreboard players operation #attribute.damage.total stellarity.misc += #attribute.damage.strength stellarity.misc
#scoreboard players operation #attribute.damage.total stellarity.misc += #attribute.damage.weakness stellarity.misc

execute if score #attribute.damage.total stellarity.misc matches ..0 run scoreboard players set #attribute.damage.total stellarity.misc 0


scoreboard players operation #attribute.damage.ratio stellarity.misc = #attribute.damage.current stellarity.misc
scoreboard players operation #attribute.damage.ratio stellarity.misc /= #attribute.damage.total stellarity.misc
scoreboard players operation #attribute.damage.ratio stellarity.misc -= #100 stellarity.misc

## DEBUG
#tellraw @s [{"score":{"name": "#attribute.damage.current","objective": "stellarity.misc"}}," ",{"score":{"name": "#attribute.damage.total","objective": "stellarity.misc"}}," ",{"score":{"name": "#attribute.damage.ratio","objective": "stellarity.misc"}}]

scoreboard players operation #attribute.damage.ratio stellarity.misc *= #damage_boost_efficiency stellarity.misc
scoreboard players operation #attribute.damage.ratio stellarity.misc /= #100 stellarity.misc

## DEBUG
#tellraw @s [{"score":{"name": "#attribute.damage.ratio","objective": "stellarity.misc"}}]

## DEBUG
#tellraw @s [{"score":{"name": "#damage","objective": "stellarity.misc"}}]

# Increase/decrease damage
scoreboard players operation #temp stellarity.misc = #damage stellarity.misc
scoreboard players operation #temp stellarity.misc *= #attribute.damage.ratio stellarity.misc
scoreboard players operation #temp stellarity.misc /= #100 stellarity.misc
scoreboard players operation #damage stellarity.misc += #temp stellarity.misc

## DEBUG
#tellraw @s [{"score":{"name": "#damage","objective": "stellarity.misc"}}]
