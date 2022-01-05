#get fuse if you haven't already
execute if entity @s[tag=!s.crhf.creeper_tagged] store result score @s s.crhf.fuse run data get entity @s Fuse
#then update fuse
execute if entity @s[tag=!s.crhf.creeper_tagged] run data merge entity @s {Fuse:10000s}

#add tag if ignited
execute if entity @s[nbt={ignited:1b}] run tag @s add s.crhf.creeper_igniting

#add tag if igniting
execute if entity @s[tag=!s.crhf.creeper_igniting] if predicate explosion_rebuilder:engage if predicate explosion_rebuilder:target_player run tag @s add s.crhf.creeper_engaged

#disengage enaged if not in raycast
execute if entity @s[tag=!s.crhf.creeper_igniting,tag=s.crhf.creeper_engaged] run function explosion_rebuilder:creeper_engaged

#disengage if out of radius
execute if entity @s[tag=!s.crhf.creeper_igniting,tag=creeper_engaged] if predicate explosion_rebuilder:disengage run tag @s remove s.crhf.creeper_engaged


#ignite timer if ignited
execute if entity @s[tag=s.crhf.creeper_igniting] run function explosion_rebuilder:igniting
execute if entity @s[tag=s.crhf.creeper_engaged,tag=!s.crhf.creeper_igniting] run function explosion_rebuilder:igniting

#otherwise unignite
scoreboard players set @s[tag=!s.crhf.creeper_engaged,tag=!s.crhf.creeper_igniting] s.crhf.countdown 0

#add initial spawn tag
tag @s[tag=!s.crhf.creeper_tagged] add s.crhf.creeper_tagged