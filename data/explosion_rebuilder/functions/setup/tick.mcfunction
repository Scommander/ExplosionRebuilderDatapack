#20 tps

#menu
execute as @a run function explosion_rebuilder:as_player

#systems
execute as @e[type=minecraft:marker,tag=s.crhf.block_marker] at @s run function explosion_rebuilder:as_marker

#store number to be filled
execute if score $rebuild_type s.crhf.settings matches 1 run function explosion_rebuilder:rebuild
execute if score $rebuild_type s.crhf.settings matches 0 as @e[type=minecraft:marker,tag=s.crhf.block_marker,tag=!s.crhf.uninit] at @s run function explosion_rebuilder:just_drop

#NOT ADDED: Wither itself, End Crystals, Beds, Respawn Anchor, TNT Minecart
#ADDED: Creeper, Charged Creeper, TNT, Wither Skulls, Fireballs

#per entity checking
execute as @e[type=minecraft:creeper] at @s run function explosion_rebuilder:as_creeper
execute if score $fireballs_enabled s.crhf.settings matches 1 as @e[type=minecraft:fireball,nbt=!{Motion:[0.0d,0.0d,0.0d]}] at @s run function explosion_rebuilder:as_spat
execute if score $wskulls_enabled s.crhf.settings matches 1 as @e[type=minecraft:wither_skull,nbt=!{Motion:[0.0d,0.0d,0.0d]}] at @s run function explosion_rebuilder:as_spat
execute if score $tnt_enabled s.crhf.settings matches 1 as @e[type=minecraft:tnt,nbt={Fuse:1s}] at @s run function explosion_rebuilder:as_tnt