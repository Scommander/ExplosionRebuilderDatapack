scoreboard players set $steps s.crhf.countdown 14
tag @s add s.crhf.player_flag
execute anchored eyes positioned ^ ^ ^ facing entity @p eyes run function explosion_rebuilder:raycast
execute if entity @s[tag=s.crhf.player_flag] run tag @s remove s.crhf.creeper_engaged
tag @s[tag=s.crhf.player_flag] remove s.crhf.player_flag