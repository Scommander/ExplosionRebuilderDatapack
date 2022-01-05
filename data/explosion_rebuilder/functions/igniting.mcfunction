#spawn markers tick before exploding
scoreboard players add @s s.crhf.countdown 1

#kill if max commands reached
execute if score @s s.crhf.countdown matches 31.. run scoreboard players set @s s.crhf.countdown -1
execute if score @s s.crhf.countdown matches -1 run kill @s

execute if score $creepers_enabled s.crhf.settings matches 1 if score @s[nbt=!{powered:1b}] s.crhf.countdown matches 30.. run function explosion_rebuilder:creeper_scan

execute if score $charged_creepers_enabled s.crhf.settings matches 1 if score @s[nbt={powered:1b}] s.crhf.countdown matches 30.. run data merge entity @s {ExplosionRadius:2b}
execute if score $charged_creepers_enabled s.crhf.settings matches 1 if score @s[nbt={powered:1b}] s.crhf.countdown matches 30.. run function explosion_rebuilder:charged_creeper_scan

execute if score @s s.crhf.countdown matches 30.. run data merge entity @s {Fuse:0s}