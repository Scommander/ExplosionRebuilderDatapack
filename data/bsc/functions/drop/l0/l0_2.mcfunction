execute if score @s s.crhf.block_id matches 8..9 run function bsc:drop/l0/p/l0_0
execute if score @s s.crhf.block_id matches 10 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:dirt",Count:1b}}
execute if score @s s.crhf.block_id matches 11 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:coarse_dirt",Count:1b}}
execute if score @s s.crhf.block_id matches 12..13 run function bsc:drop/l0/p/l0_1
