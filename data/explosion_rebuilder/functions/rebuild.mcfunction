execute store result score $possibilities s.crhf.countdown if entity @e[type=minecraft:marker,tag=s.crhf.block_marker,tag=!s.crhf.uninit,tag=!s.crhf.charged,tag=s.crhf.ready_to_replace] 
#grab blocks/tick
scoreboard players operation $iterations s.crhf.countdown = $actual_bpt s.crhf.settings
#if there are less possibilities than iterations - possibilites becomes iterations
execute if score $possibilities s.crhf.countdown < $iterations s.crhf.countdown run scoreboard players operation $iterations s.crhf.countdown = $possibilities s.crhf.countdown 
#iterate if there is stuff to do
execute if score $possibilities s.crhf.countdown matches 1.. run function explosion_rebuilder:iterate_fill