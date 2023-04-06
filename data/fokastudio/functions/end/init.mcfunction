## Scoreboards creation
# Configuration
scoreboard objectives add foka.config.custom_music dummy
scoreboard objectives add foka.config.join_message dummy
scoreboard objectives add foka.config.change_gamerules dummy
scoreboard objectives add foka.config.always_generate_egg dummy

# Initialize config scoreboards that do not have a value at start,
# but require them to work properly (or at all)
# Freshly created scoreboards have no value (not even set to 0)
# The trick I used is checking whether a given scoreboard is SET TO A NUMBER
# 'null' is not a number, remember!
# *coughs in German*
function fokastudio:end/config/init

## Items
scoreboard objectives add foka.items.dragonblade.cooldown dummy "Dragonblade Cooldown"
scoreboard objectives add foka.items.dragonblade.stacks dummy "Dragonblade Stack Count"
scoreboard objectives add foka.items.dragonblade.until_stack_reset dummy "Dragonblade Until Stack Reset"
scoreboard objectives add foka.items.dragonblade.punch_progress dummy "Dragonblade Punch Animation Progress"
scoreboard objectives add foka.items.dragonblade.until_punch_reset dummy "Dragonblade Until Punch Animation Progress Reset"

scoreboard objectives add foka.items.pandoras_barrel.raycast dummy "Pandora's Barrel Raycast"
scoreboard objectives add foka.items.pandoras_barrel.animation dummy "Pandora's Barrel Animation Progress"
scoreboard objectives add foka.items.pandoras_barrel.summon_id dummy "Pandora's Barrel Summon ID"

scoreboard objectives add foka.items.armors.holy_protection_cooldown dummy "Holy Protection Cooldown"
scoreboard objectives add foka.items.armors.ancient_armor.combo dummy "Ancient Armor Combo"
scoreboard objectives add foka.items.armors.ancient_armor.until_combo_reset dummy "Ancient Armor Until Combo Reset"

scoreboard objectives add foka.items.sharanga.arrow_age dummy "Sharanga Arrow Age"

scoreboard objectives add foka.items.clockwork_crossbow.arrow_amount dummy "Clockwork Crossbow Arrow Amount"

scoreboard objectives add foka.items.crest.bonus_dmg dummy "Crest of The End Extra Damage"

scoreboard objectives add foka.items.prismatic_punch.particle_cycle dummy "Prismatic Punch Particle Cycle"
scoreboard objectives add foka.items.prismatic_punch.marker_age dummy "Prismatic Punch Projectile Age"

scoreboard objectives add foka.items.ender_insignia.hold_duration dummy "Ender Insignia Hold Duration"

scoreboard objectives add foka.items.sabrewing.charge dummy "Sabrewing Charge Time"
scoreboard objectives add foka.items.sabrewing.until_charge_reset dummy "Sabrewing Until Charge Time Reset"

scoreboard objectives add foka.items.spellbook.conveyance.cooldown dummy "Spellbook Conveyance Cooldown"
scoreboard objectives add foka.items.spellbook.conveyance.id dummy "Spellbook Conveyance Teleport ID"
scoreboard objectives add foka.items.spellbook.updraft.cooldown dummy "Spellbook Updraft Cooldown"
scoreboard objectives add foka.items.spellbook.light.cooldown dummy "Spellbook Light Cooldown"

scoreboard objectives add foka.items.fish.mystical_heartfish.total_consumed dummy "Mystical Heartfish Total Consumed"

scoreboard objectives add foka.items.spirit_dagger.attract_cooldown dummy "Spirit Dagger Attract Cooldown"
scoreboard objectives add foka.items.spirit_dagger.consume_time dummy "Spirit Dagger Consume Time"
scoreboard objectives add foka.items.spirit_dagger.until_consume_reset dummy "Spirit Dagger Until Consume Time Reset"
scoreboard objectives add foka.items.spirit_dagger.effects_duration dummy "Spirit Dagger Effects Duration"

scoreboard objectives add foka.items.prismatic_pearl.cooldown dummy "Prismatic Pearl Cooldown"

scoreboard objectives add foka.items.tamaris.math.health.current dummy "Tamaris Current Health"
scoreboard objectives add foka.items.tamaris.math.health.max dummy "Tamaris Max Health"
scoreboard objectives add foka.items.tamaris.math.health.percentage dummy "Tamaris Health Percentage"
scoreboard objectives add foka.items.tamaris.animation.progress dummy "Tamaris Animation Progress"
scoreboard objectives add foka.items.tamaris.execute_cooldown dummy "Tamaris Execute Cooldown"

## Mobs
# Empress of Light
scoreboard objectives add foka.eol.animation dummy "EoL Animation Progress"
scoreboard objectives add foka.eol.health dummy "EoL "
scoreboard objectives add foka.eol.attack_cycle dummy "EoL Attack Cycle"
scoreboard objectives add foka.eol.attack_duration dummy "EoL Attack Duration"
scoreboard objectives add foka.eol.attack_cooldown dummy "EoL Attack Cooldown"
scoreboard objectives add foka.eol.projectile_age dummy "EoL Projectile Age"

scoreboard objectives add foka.phantom.size dummy "Phantom Size"

## Mechanics
scoreboard objectives add foka.mechanics.void_fishing_length dummy "Void Fishing Length"
scoreboard objectives add foka.mechanics.crystal_count dummy "End Crystal Count"
scoreboard objectives add foka.mechanics.void_totem_protection_time dummy "Void Totem Protection Time"
scoreboard objectives add foka.mechanics.end_music dummy "End Music Timer"

## Misc
# Temporar variables OR things that don't need its own variable
scoreboard objectives add foka.misc dummy "Misc"
scoreboard objectives add foka.misc2 dummy "Misc 2"
scoreboard objectives add foka.misc.end_portal_animation dummy "End Portal Animation Progress"
scoreboard objectives add foka.misc.shot_bow minecraft.used:minecraft.bow "Events: Shot Bow"
scoreboard objectives add foka.misc.thrown_trident minecraft.used:minecraft.trident "Events: Thrown Trident"
scoreboard objectives add foka.misc.used_ender_pearl minecraft.used:minecraft.ender_pearl "Events: Thrown Ender Pearl"
scoreboard objectives add foka.misc.hunger food "Player: Saturation"
scoreboard objectives add foka.misc.invul_timer dummy "Player: Damage System Invulnerability Ticks"
scoreboard objectives add foka.misc.flight_speed minecraft.custom:minecraft.aviate_one_cm "Player: Elytra Current Flight Speed"
scoreboard objectives add foka.misc.respawn_detection minecraft.custom:minecraft.deaths "Player: Respawn Detection"
scoreboard objectives add foka.misc.time_since_rest minecraft.custom:minecraft.time_since_rest "Player: Time Since Last Rest"
scoreboard objectives add foka.misc.motion.x1 dummy "Motion Calc: X1"
scoreboard objectives add foka.misc.motion.x2 dummy "Motion Calc: X2"
scoreboard objectives add foka.misc.motion.y1 dummy "Motion Calc: Y1"
scoreboard objectives add foka.misc.motion.y2 dummy "Motion Calc: Y2"
scoreboard objectives add foka.misc.motion.z1 dummy "Motion Calc: Z1"
scoreboard objectives add foka.misc.motion.z2 dummy "Motion Calc: Z2"


# Hook for checking if FSEE is installed
scoreboard players set #fsee.is_installed foka.misc 1

# Detecting whether FSEE is being used on a server, or as a mod
# Different things happen on different loaders
# This is executed only once on first pack load to avoid unnecessary lag!
execute unless score #reload foka.misc matches 1.. unless score #foka.config foka.config.join_message matches 0 run schedule function fokastudio:end/tellraw 5t
execute unless score #reload foka.misc matches 1.. unless score #foka.is_spigot foka.misc matches 0.. unless score #foka.is_forge foka.misc matches 0.. unless score #foka.is_fabric foka.misc matches 0.. run schedule function fokastudio:end/loader_detection/detect 1s

## Creating teams
# Currently only used for purple glow color
# of dropped Ender Insignia
team add foka.purple_glow
team modify foka.purple_glow color dark_purple

## Bossbars
# 'Crystals Left'
bossbar add fokastudio:end/crystal_count {"text":"Crystals Left"}
bossbar set fokastudio:end/crystal_count color purple
bossbar set fokastudio:end/crystal_count visible true
bossbar set fokastudio:end/crystal_count players
bossbar set fokastudio:end/crystal_count max 10
bossbar set fokastudio:end/crystal_count style notched_10
# Empress of Light
bossbar add fokastudio:end/eol {"text":"Empress of Light","color":"pink"}
bossbar set fokastudio:end/eol color pink
bossbar set fokastudio:end/eol visible true
bossbar set fokastudio:end/eol players
bossbar set fokastudio:end/eol max 800
bossbar set fokastudio:end/eol style notched_10

# Scheduling loops that do not need
# to be executed every single tick
schedule function fokastudio:end/loops/2_tick 2t append
schedule function fokastudio:end/loops/3_tick 3t append
schedule function fokastudio:end/loops/5_tick 5t append
schedule function fokastudio:end/loops/6_tick 6t append
schedule function fokastudio:end/loops/10_tick 10t append
schedule function fokastudio:end/loops/1_second 1s append
schedule function fokastudio:end/loops/5_second 5s append
schedule function fokastudio:end/loops/10_second 10s append

# Initialize RNG
function fokastudio:end/utils/rng/init

# Get world difficulty
execute store result score #difficulty foka.misc run difficulty
