#scoreboards
scoreboard objectives add s.crhf.countdown dummy
scoreboard objectives add s.crhf.fuse dummy
scoreboard objectives add s.crhf.block_id dummy
scoreboard objectives add s.crhf.id dummy
scoreboard objectives add s.crhf.settings dummy
scoreboard players add $s.crhf.explosions s.crhf.countdown 0

scoreboard objectives add explosionSettings trigger

#add forceload
forceload add 29999993 265
#forceloaded marker (following conventions)
summon minecraft:marker 29999993 0 265 {Tags:["s.crhf.load_marker","global.forceload","global.ignore"]}
setblock 29999987 5 259 minecraft:glass

execute unless score $installed s.crhf.settings matches 1 run function explosion_rebuilder:setup/default_settings 