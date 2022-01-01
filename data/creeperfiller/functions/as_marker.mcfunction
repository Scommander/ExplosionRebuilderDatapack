#make kill area more accurate
scoreboard players add @s s.crhf.countdown 1
#kill items
execute if score @s s.crhf.countdown matches 1 if block ~ ~ ~ #creeperfiller:air align xyz run kill @e[type=minecraft:item,dx=0]
#kill marker if block is normal
execute if score @s s.crhf.countdown matches 1 unless block ~ ~ ~ #creeperfiller:air run kill @s