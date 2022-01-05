#toggle
scoreboard players add $charged_creepers_enabled s.crhf.settings 1
execute if score $charged_creepers_enabled s.crhf.settings matches 2.. run scoreboard players set $charged_creepers_enabled s.crhf.settings 0

function explosion_rebuilder:menu/give