#make kill area more accurate
scoreboard players add @s s.crhf.countdown 1
#kill items
execute if score @s s.crhf.countdown matches 1 if block ~ ~ ~ #explosion_rebuilder:air align xyz run kill @e[type=minecraft:item,dx=0]
#kill marker if block is normal
execute if score @s s.crhf.countdown matches 1 unless block ~ ~ ~ #explosion_rebuilder:air run kill @s

#add tag if not already got it if above wait time
execute unless block ~ -64 ~ minecraft:structure_void if score @s s.crhf.countdown > $actual_wait_time s.crhf.settings run tag @s[tag=!s.crhf.ready_to_replace] add s.crhf.ready_to_replace

#init
execute if score @s s.crhf.countdown matches 1 run tag @e[tag=s.crhf.uninit] remove s.crhf.uninit