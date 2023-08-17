# Splits damage into a full integer and its decimal,
# and then inserts return values into a storage
function stellarity:utils/damage/to_storage

# All the damage macros
execute if entity @s[tag=stellarity.damage.example_cause] run \
	function stellarity:utils/damage/apply/example with storage stellarity:temp damage.damage
execute if entity @s[tag=stellarity.damage.sharanga_explosion] run \
	function stellarity:utils/damage/apply/sharanga with storage stellarity:temp damage.damage
execute if entity @s[tag=stellarity.damage.eol.ethereal_lance] run \
	function stellarity:utils/damage/apply/empress_of_light/projectile with storage stellarity:temp damage.damage
execute if entity @s[tag=stellarity.damage.eol.prismatic_bolts] run \
	function stellarity:utils/damage/apply/empress_of_light/projectile with storage stellarity:temp damage.damage
execute if entity @s[tag=stellarity.damage.eol.dash] run \
	function stellarity:utils/damage/apply/empress_of_light/dash with storage stellarity:temp damage.damage
execute if entity @s[tag=stellarity.damage.carcanet] run \
	function stellarity:utils/damage/apply/carcanet with storage stellarity:temp damage.damage
execute if entity @s[tag=stellarity.damage.spirit_dagger] run \
	function stellarity:utils/damage/apply/spirit_dagger with storage stellarity:temp damage.damage
execute if entity @s[tag=stellarity.damage.dragonblade] run \
	function stellarity:utils/damage/apply/dragonblade with storage stellarity:temp damage.damage
execute if entity @s[tag=stellarity.damage.natures_wrath] run \
	function stellarity:utils/damage/apply/natures_wrath with storage stellarity:temp damage.damage
execute if entity @s[tag=stellarity.damage.dot.dark_decay] run \
	function stellarity:utils/damage/apply/dark_decay with storage stellarity:temp damage.damage
execute if entity @s[tag=stellarity.damage.dot.prismatic_inferno] run \
	function stellarity:utils/damage/apply/prismatic_inferno with storage stellarity:temp damage.damage
execute if entity @s[tag=stellarity.damage.dot.frostburn] run \
	function stellarity:utils/damage/apply/frostburn with storage stellarity:temp damage.damage
execute if entity @s[tag=stellarity.damage.kaleidoscope] run \
	function stellarity:utils/damage/apply/kaleidoscope with storage stellarity:temp damage.damage


# Armor penetration is handled as a separate damage instance
execute if score #damage_ap stellarity.misc matches 1.. run \
	function stellarity:utils/damage/apply/armor_piercing with storage stellarity:temp damage.damage_ap
