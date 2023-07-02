execute if block ~ ~ ~ #explosion_rebuilder:no_drop run tag @s add s.crhf.no_drop
execute if block ~ ~ ~ #explosion_rebuilder:nbt run tag @s add s.crhf.nbt
execute if block ~ ~ ~ #explosion_rebuilder:nbt run data modify entity @s data.nbt set from block ~ ~ ~ {}

function block_generated:read/p