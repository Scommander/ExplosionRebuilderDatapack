#toggle
scoreboard players add $creepers_enabled s.crhf.settings 1
execute if score $creepers_enabled s.crhf.settings matches 2.. run scoreboard players set $creepers_enabled s.crhf.settings 0

function explosion_rebuilder:menu/give