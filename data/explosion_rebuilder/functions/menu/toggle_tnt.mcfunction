#toggle
scoreboard players add $tnt_enabled s.crhf.settings 1
execute if score $tnt_enabled s.crhf.settings matches 2.. run scoreboard players set $tnt_enabled s.crhf.settings 0

function explosion_rebuilder:menu/give