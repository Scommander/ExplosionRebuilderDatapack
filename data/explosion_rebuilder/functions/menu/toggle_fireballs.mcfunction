#toggle
scoreboard players add $fireballs_enabled s.crhf.settings 1
execute if score $fireballs_enabled s.crhf.settings matches 2.. run scoreboard players set $fireballs_enabled s.crhf.settings 0

function explosion_rebuilder:menu/give