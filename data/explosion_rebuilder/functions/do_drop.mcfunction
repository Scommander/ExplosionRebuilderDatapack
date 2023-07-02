execute positioned 29999987 5 259 if block ~ ~ ~ #explosion_rebuilder:nbt run data modify block ~ ~ ~ {} merge from entity @s data.nbt
execute positioned 29999987 5 259 unless block ~ ~ ~ #explosion_rebuilder:nbt run loot spawn ~ ~ ~ mine 29999987 5 259 minecraft:diamond_pickaxe
execute positioned 29999987 5 259 if block ~ ~ ~ #explosion_rebuilder:nbt run fill ~ ~ ~ ~ ~ ~ minecraft:air destroy
execute positioned 29999987 5 259 run tp @e[type=item,distance=..3] @s

say hi