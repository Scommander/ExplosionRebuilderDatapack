scoreboard players remove $steps s.crhf.countdown 1
execute if entity @a[dx=0] run tag @s remove s.crhf.player_flag
execute if entity @s[tag=s.crhf.player_flag] positioned ^ ^ ^0.5 if block ^ ^ ^ #explosion_rebuilder:air if score $steps s.crhf.countdown matches 1.. run function explosion_rebuilder:raycast