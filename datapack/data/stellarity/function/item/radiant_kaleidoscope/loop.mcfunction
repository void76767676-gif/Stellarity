# 1. Initial equip check: if weapon was just equipped for the first time, start initial 48-second cooldown
execute unless score @s stellarity.item.rk.cooldown_initialized matches 1.. run scoreboard players set @s stellarity.item.rk.cooldown_initialized 1
execute if score @s stellarity.item.rk.cooldown_initialized matches 1 unless score @s stellarity.item.rk.cooldown matches 1.. run function stellarity:item/radiant_kaleidoscope/cooldown/start
execute if score @s stellarity.item.rk.cooldown_initialized matches 1 run scoreboard players set @s stellarity.item.rk.cooldown_initialized 2

# 2. On Cooldown: enforce weakness so attacks do no damage, manage low energy sound cd, and display actionbar
execute if entity @s[tag=stellarity.item.rk.on_cooldown] run effect give @s minecraft:weakness 2 255 true
execute if entity @s[tag=stellarity.item.rk.on_cooldown] if score @s stellarity.item.rk.low_energy_cd matches 1.. run scoreboard players remove @s stellarity.item.rk.low_energy_cd 1

# If on cooldown, display cooldown countdown and return
execute if entity @s[tag=stellarity.item.rk.on_cooldown] run function stellarity:item/radiant_kaleidoscope/actionbar_cooldown
execute if entity @s[tag=stellarity.item.rk.on_cooldown] run return 0

# 3. Active Guard: tick shield if active
execute if entity @s[tag=stellarity.item.rk.guard_active] run return run function stellarity:item/radiant_kaleidoscope/guard/tick

# 4. Guard Charging: if sneaking on ground and not in recovery
execute unless score @s stellarity.item.rk.recovery matches 1.. if predicate kohara:player/is_sneaking if data entity @s {OnGround:1b} run return run function stellarity:item/radiant_kaleidoscope/guard/charge

# If player released sneak before charging completed, reset charge
execute if score @s stellarity.item.rk.charge_shift matches 1.. unless predicate kohara:player/is_sneaking run scoreboard players reset @s stellarity.item.rk.charge_shift

# 5. Holding Particles
execute if predicate kohara:chance/25percent run particle dust{color:[1.00, 0.85, 0.20],scale:0.8} ^0.2 ^1.2 ^0.6 0.05 0.05 0.05 0.01 1
execute if predicate kohara:chance/15percent run particle end_rod ^0.2 ^1.2 ^0.6 0.05 0.05 0.05 0.01 1

# 6. Actionbar when ready / hunting
execute unless score @s stellarity.item.rk.recovery matches 1.. if entity @e[scores={stellarity.item.rk.mark_rank=1..},distance=..32] run return run function stellarity:item/radiant_kaleidoscope/mark/actionbar
execute unless score @s stellarity.item.rk.recovery matches 1.. run title @s actionbar [{"text":"✦ ","color":"#FFE259"},{"text":"Radiant Kaleidoscope Ready","color":"#FFD700","bold":true},{"text":" ✦","color":"#FFE259"}]
