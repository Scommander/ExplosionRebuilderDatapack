#place correct block
execute align xyz if block ~ ~ ~ #explosion_rebuilder:air unless entity @e[type=!player,type=!marker,type=!area_effect_cloud,type=!item,type=!tnt,dx=0,limit=1] unless entity @a[gamemode=!spectator,dx=0,limit=1] positioned ~ ~-1 ~ unless entity @e[type=!player,type=!marker,type=!area_effect_cloud,type=!item,type=!tnt,dx=0,limit=1] unless entity @a[gamemode=!spectator,dx=0,limit=1] run tag @s add s.crhf.replaceable

#run correct function
execute if entity @s[tag=s.crhf.replaceable] run function block_generated:write/p


execute if entity @s[tag=!s.crhf.replaceable] unless entity @s[tag=s.crhf.no_drop] run function explosion_rebuilder:drop


#merge data
execute if entity @s[tag=s.crhf.replaceable] run data modify block ~ ~ ~ {} merge from entity @s data.nbt
execute if entity @s[tag=!s.crhf.replaceable] if entity @s[tag=!s.crhf.nbt] run data modify entity @e[type=minecraft:item,limit=1,distance=..1,sort=nearest,nbt={Age:0s}] Item.tag.BlockEntityTag merge from entity @s data.nbt

#playsound
playsound block.bubble_column.bubble_pop block @a
#kill after
kill @s