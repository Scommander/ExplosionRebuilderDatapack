#toggle
scoreboard players add $rebuild_type s.crhf.settings 1
execute if score $rebuild_type s.crhf.settings matches 2.. run scoreboard players set $rebuild_type s.crhf.settings 0
function explosion_rebuilder:menu/give