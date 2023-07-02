#scoreboards
scoreboard objectives remove s.crhf.countdown
scoreboard objectives remove s.crhf.fuse
scoreboard objectives remove s.crhf.block_id
scoreboard objectives remove s.crhf.id
scoreboard objectives remove s.crhf.settings

#merge fuse
execute as @e[type=minecraft:creeper] run data merge entity @s {Fuse:30s}
execute as @e[type=minecraft:creeper] run tag @s remove s.crhf.creeper_tagged

#forceload remove
execute as @e[type=minecraft:marker,tag=s.crhf.load_marker] at @s run function explosion_rebuilder:forceload_uninstall

#message
tellraw @s ["",{"text":"'Explosion Rebuilder' uninstalled. Please leave the world and delete the datapack. If you relog before deleting you will need to run this uninstall command again.","color":"red"}]