### Scoreboard Details ###
  # stellarity.dragon.times_killed - the number of times the dragon is killed ## Bound to the portal marker.
    # #respawn_crystal_count stellarity.misc - number of respawn crystals on the podium ## Global scoreboard not bound to an entity.
      # stellarity.dragon.respawn_animation_progress - timer for respawn animation ## Bound to the portal marker.

# Deduplicate exit portal markers to prevent multiple dragon spawns
tag @e[type=marker,tag=stellarity.exit_portal,limit=1] add stellarity.primary_portal
kill @e[type=marker,tag=stellarity.exit_portal,tag=!stellarity.primary_portal]
tag @e[type=marker,tag=stellarity.primary_portal] remove stellarity.primary_portal

# Auto-purge ground vanilla bedrock portal fountain when detected:
# In vanilla podium: egg is at 0 65 0, wall torches are at 0 62 1, and end stone ring is at 0 60 4.
execute in minecraft:the_end if block 0 65 0 minecraft:dragon_egg run function stellarity:structure/exit_portal/force_init
execute in minecraft:the_end if block 0 62 1 minecraft:wall_torch run function stellarity:structure/exit_portal/force_init
execute in minecraft:the_end if block 0 60 4 minecraft:end_stone run function stellarity:structure/exit_portal/force_init

# Auto-purge sky vanilla bedrock portal fountain (at Y=190..256):
execute in minecraft:the_end if block 0 255 0 minecraft:bedrock run function stellarity:structure/exit_portal/purge_sky
execute in minecraft:the_end if block 0 200 0 minecraft:bedrock run function stellarity:structure/exit_portal/purge_sky
execute in minecraft:the_end unless block 0 255 0 air unless block 0 255 0 dirt run function stellarity:structure/exit_portal/purge_sky

      ## Generation
        # Generate the deactivated portal with ender dragon.
          execute if entity @s[tag=stellarity.portal_deactivated] run function stellarity:structure/exit_portal/deactivated/animation_no_dragon
          execute if entity @s[tag=stellarity.portal_deactivated.spawn_dragon] run function stellarity:structure/exit_portal/deactivated/animation

        # Generate the activated portal once the dragon is killed.
          execute if entity @p[predicate=stellarity:location/dragons_den/in_main_area] if entity @s[tag=stellarity.portal_activated] unless entity @e[type=minecraft:ender_dragon,tag=stellarity.ender_dragon] run function stellarity:structure/exit_portal/activated/animation

        ## Respawn stuff
          # Count the number of respawn Crystals placed
            execute if score #stellarity.config stellarity.config.enable_ender_dragon matches 1 unless entity @e[type=minecraft:ender_dragon,distance=..300] run function stellarity:entity/dragon/spawn/conditions
            # Start the respawn animation
              execute if entity @s[tag=stellarity.respawn_dragon] run function stellarity:entity/dragon/spawn/animation

            # Remove certain tags and add different ones once Dragon is dead
              execute if entity @s[tag=stellarity.in_dragon_fight] unless entity @e[type=minecraft:ender_dragon,tag=stellarity.ender_dragon,distance=..300] run function stellarity:structure/exit_portal/dragon/presence

            execute unless score @s[tag=!stellarity.in_dragon_fight] stellarity.dragon.times_killed matches 1.. run function stellarity:entity/dragon/spawn/respawn_crystal/illumnate_spot

          # Post generation for Altar of the Accursed
            # Can't really do it with pure Worldgen sadly
              # Or I could, but definitely not in the way I would want to
                execute unless score #stellarity.post_gen.initialized stellarity.misc matches 1 if entity @s[tag=!stellarity.post_gen.initialized] in minecraft:the_end run function stellarity:post_gen/initialize

              # Dragon Screenshake
                execute if entity @s[tag=stellarity.respawn_dragon] as @a[tag=stellarity.dragon.screenshake] at @s run function stellarity:entity/dragon/spawn/screenshake/tick_up
                execute if entity @s[tag=!stellarity.respawn_dragon] as @a[tag=stellarity.dragon.screenshake] at @s run function stellarity:entity/dragon/spawn/screenshake/tick_down

              execute if score #stellarity.dragon.ash_duration stellarity.misc matches 1.. run function stellarity:entity/dragon/ash
