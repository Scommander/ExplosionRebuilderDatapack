#place correct block
execute unless entity @s[tag=s.crhf.no_drop] run function explosion_rebuilder:drop

#merge data
execute if entity @s[tag=!s.crhf.replaceable] if entity @s[tag=!s.crhf.nbt] run data modify entity @e[type=minecraft:item,limit=1,distance=..1,sort=nearest,nbt={Age:0s}] Item.tag.BlockEntityTag merge from entity @s data.nbt

#NO SOUND FOR ITEM DROP
#playsound block.bubble_column.bubble_pop block @a
#kill after
kill @s