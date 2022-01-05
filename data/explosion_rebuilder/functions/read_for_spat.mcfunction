scoreboard players operation @s s.crhf.id = $check_id s.crhf.id
execute if block ~ ~ ~ #explosion_rebuilder:no_drop run tag @s add s.crhf.no_drop
execute if block ~ ~ ~ #explosion_rebuilder:nbt run tag @s add s.crhf.nbt
execute if block ~ ~ ~ #explosion_rebuilder:nbt run data modify entity @s data.nbt set from block ~ ~ ~ {}

function bsc:read