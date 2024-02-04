kill @s
kill @e[type=interaction,limit=1,sort=nearest,tag=stellarity.end_city.crystal]
kill @e[type=marker,limit=1,sort=nearest,tag=stellarity.end_city.crystal]

setblock ~ ~-1 ~ chest{LootTable:"stellarity:end_city/top_tower"} replace

fill ~-1 ~5 ~-1 ~1 ~5 ~1 iron_block replace obsidian
fill ~ ~6 ~ ~ ~6 ~ beacon replace glass
execute if block ~ ~6 ~ beacon run setblock ~ ~7 ~ magenta_stained_glass_pane
summon marker ~ ~6 ~ {Tags:["stellarity.marker","stellarity.end_city.no_beacon"]}

particle flash ~ ~ ~ 0 0 0 0 1 force @a[distance=..32]
particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a[distance=..32]
playsound entity.generic.explode block @a[distance=0..] ~ ~ ~ 1 0.75
playsound minecraft:block.respawn_anchor.deplete block @a[distance=0..] ~ ~ ~ 1 0
