# This advancement triggers every tick btw
advancement revoke @s only stellarity:events/items/charge_spectral_fury

execute unless score @s stellarity.items.spectral_fury.charge matches 21.. run scoreboard players add @s stellarity.items.spectral_fury.charge 1

scoreboard players set @s stellarity.items.spectral_fury.until_charge_reset 2
