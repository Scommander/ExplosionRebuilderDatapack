#if charged
#execute if entity @s[nbt={powered:1b}] run function creeperfiller:is_charged

#get fuse if you haven't already
execute if entity @s[tag=!s.crhf.creeper_tagged] store result score @s s.crhf.fuse run data get entity @s Fuse
#then update fuse
execute if entity @s[tag=!s.crhf.creeper_tagged] run data merge entity @s {Fuse:10000s}

#add tag if ignited
execute if entity @s[nbt={ignited:1b}] run tag @s add s.crhf.creeper_igniting

#add tag if igniting
execute if entity @s[tag=!s.crhf.creeper_igniting] if predicate creeperfiller:engage run tag @s add s.crhf.creeper_engaged
execute if entity @s[tag=!s.crhf.creeper_igniting] if predicate creeperfiller:disengage run tag @s remove s.crhf.creeper_engaged

#ignite timer if ignited
execute if entity @s[tag=s.crhf.creeper_igniting] run function creeperfiller:igniting
execute if entity @s[tag=s.crhf.creeper_engaged,tag=!s.crhf.creeper_igniting] run function creeperfiller:igniting

#otherwise unignite
scoreboard players set @s[tag=!s.crhf.creeper_engaged,tag=!s.crhf.creeper_igniting] s.crhf.countdown 0

#add initial spawn tag
tag @s[tag=!s.crhf.creeper_tagged] add s.crhf.creeper_tagged