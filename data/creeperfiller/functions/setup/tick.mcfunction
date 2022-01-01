#20 tps
execute as @e[type=minecraft:marker,tag=s.crhf.block_marker] at @s run function creeperfiller:as_marker

#random fill
execute at @e[type=minecraft:marker,tag=s.crhf.block_marker,tag=!s.crhf.charged,scores={s.crhf.countdown=60..},sort=random,limit=1] positioned ~ -64 ~ as @e[type=minecraft:marker,tag=s.crhf.block_marker,scores={s.crhf.countdown=60..},sort=nearest,limit=1] at @s run function creeperfiller:fill_hole

#track creeper
execute as @e[type=minecraft:creeper] at @s run function creeperfiller:as_creeper