execute if score $wait_time s.crhf.settings matches 1.. run function explosion_rebuilder:menu/update_wait_time
execute if score $wait_time s.crhf.settings matches ..0 run tellraw @s ["",{"text":"Invalid! Must be above 1.","color":"red"}]
execute if score $wait_time s.crhf.settings matches ..0 run scoreboard players reset $wait_time s.crhf.settings

execute if score $bpt s.crhf.settings matches 1.. run function explosion_rebuilder:menu/update_bpt
execute if score $bpt s.crhf.settings matches ..0 run tellraw @s ["",{"text":"Invalid! Must be above 1.","color":"red"}]
execute if score $bpt s.crhf.settings matches ..0 run scoreboard players reset $bpt s.crhf.settings

execute if score @s explosionSettings matches 1.. run function explosion_rebuilder:menu/give
scoreboard players enable @s explosionSettings