#toggle
scoreboard players add $wskulls_enabled s.crhf.settings 1
execute if score $wskulls_enabled s.crhf.settings matches 2.. run scoreboard players set $wskulls_enabled s.crhf.settings 0

function explosion_rebuilder:menu/give