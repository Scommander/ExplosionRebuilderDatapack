summon minecraft:marker ~ ~ ~ {Tags:["global.ignore","s.crhf.block_marker","s.crhf.tnt_marker"]}
execute as @e[type=minecraft:marker,tag=s.crhf.block_marker,limit=1,distance=..1,sort=nearest] run function explosion_rebuilder:read
