#store coords

#kill those with same id
execute if entity @s[tag=s.crhf.tagged_spat] run scoreboard players operation $check_id s.crhf.id = @s s.crhf.id
execute if entity @s[tag=s.crhf.tagged_spat] as @e[type=minecraft:marker,tag=s.crhf.marker_with_id] if score @s s.crhf.id = $check_id s.crhf.id run kill @s

#give ID
execute if entity @s[tag=!s.crhf.tagged_spat] run function explosion_rebuilder:give_id
scoreboard players operation $check_id s.crhf.id = @s s.crhf.id
function explosion_rebuilder:spat_scan
tag @s[tag=!s.crhf.tagged_spat] add s.crhf.tagged_spat