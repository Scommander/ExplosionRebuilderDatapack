#do the thing
execute at @e[type=minecraft:marker,tag=s.crhf.block_marker,tag=!s.crhf.uninit,tag=!s.crhf.charged,tag=s.crhf.ready_to_replace,sort=random,limit=1] positioned ~ -64 ~ as @e[type=minecraft:marker,tag=s.crhf.block_marker,tag=!s.crhf.uninit,tag=s.crhf.ready_to_replace,sort=nearest,limit=1] at @s run function explosion_rebuilder:fill_hole

#remove score
scoreboard players remove $iterations s.crhf.countdown 1

#stop after iterations
execute unless score $iterations s.crhf.countdown matches ..0 run function explosion_rebuilder:iterate_fill