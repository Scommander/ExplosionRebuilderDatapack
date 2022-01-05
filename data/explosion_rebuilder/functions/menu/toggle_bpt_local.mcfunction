#toggle
scoreboard players add $bpt_local s.crhf.settings 1
execute if score $bpt_local s.crhf.settings matches 2.. run scoreboard players set $bpt_local s.crhf.settings 0

function explosion_rebuilder:menu/give