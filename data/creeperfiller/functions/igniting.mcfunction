#spawn markers tick before exploding
scoreboard players add @s s.crhf.countdown 1

#kill if max commands reached
execute if score @s s.crhf.countdown matches 31.. run scoreboard players set @s s.crhf.countdown -1
execute if score @s s.crhf.countdown matches -1 run kill @s

execute if score @s s.crhf.countdown matches 30.. run function creeperfiller:small_scan

execute if score @s s.crhf.countdown matches 30.. run data merge entity @s {Fuse:0s}