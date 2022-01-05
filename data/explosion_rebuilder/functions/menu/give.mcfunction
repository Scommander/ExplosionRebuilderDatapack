#Explosion Filler
tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\nExplosion Rebuilder Settings:","color":"aqua"}]

#creepers
execute if score $creepers_enabled s.crhf.settings matches 1 run tellraw @s [{"text":"- Creepers: "},{"text":"[Rebuild On]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Toggle"}]},"clickEvent":{"action":"run_command","value":"/function explosion_rebuilder:menu/toggle_creepers"}}]
execute unless score $creepers_enabled s.crhf.settings matches 1 run tellraw @s [{"text":"- Creepers: "},{"text":"[Rebuild Off]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Toggle"}]},"clickEvent":{"action":"run_command","value":"/function explosion_rebuilder:menu/toggle_creepers"}}]
#charged
execute if score $charged_creepers_enabled s.crhf.settings matches 1 run tellraw @s [{"text":"- Charged Creepers: "},{"text":"[Rebuild On]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Toggle"}]},"clickEvent":{"action":"run_command","value":"/function explosion_rebuilder:menu/toggle_charged_creepers"}},{"text":" [?]","color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Note: To reduce the lag caused by charged creepers their blast radius when this is enabled has been made slightly smaller (by around 3-4 blocks) but is still larger than a normal creeper. I felt as though reducing the blast radius slightly , especially when it's going to get rebuilt, is worth the performance improvement. As stated, their blast radius will only be made slightly smaller when this is enabled. "}]}}]
execute unless score $charged_creepers_enabled s.crhf.settings matches 1 run tellraw @s [{"text":"- Charged Creepers: "},{"text":"[Rebuild Off]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Toggle"}]},"clickEvent":{"action":"run_command","value":"/function explosion_rebuilder:menu/toggle_charged_creepers"}},{"text":" [?]","color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Note: To reduce the lag caused by charged creepers their blast radius when this is enabled has been made slightly smaller (by around 3-4 blocks) but is still larger than a normal creeper. I felt as though reducing the blast radius slightly , especially when it's going to get rebuilt, is worth the performance improvement. As stated, their blast radius will only be made slightly smaller when this is enabled. "}]}}]

#tnt
execute if score $tnt_enabled s.crhf.settings matches 1 run tellraw @s [{"text":"- TNT: "},{"text":"[Rebuild On]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Toggle"}]},"clickEvent":{"action":"run_command","value":"/function explosion_rebuilder:menu/toggle_tnt"}}]
execute unless score $tnt_enabled s.crhf.settings matches 1 run tellraw @s [{"text":"- TNT: "},{"text":"[Rebuild Off]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Toggle"}]},"clickEvent":{"action":"run_command","value":"/function explosion_rebuilder:menu/toggle_tnt"}}]

#fireballs
execute if score $fireballs_enabled s.crhf.settings matches 1 run tellraw @s [{"text":"- Fireballs: "},{"text":"[Rebuild On]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Toggle"}]},"clickEvent":{"action":"run_command","value":"/function explosion_rebuilder:menu/toggle_fireballs"}}]
execute unless score $fireballs_enabled s.crhf.settings matches 1 run tellraw @s [{"text":"- Fireballs: "},{"text":"[Rebuild Off]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Toggle"}]},"clickEvent":{"action":"run_command","value":"/function explosion_rebuilder:menu/toggle_fireballs"}}]

#wither skulls
execute if score $wskulls_enabled s.crhf.settings matches 1 run tellraw @s [{"text":"- Wither Skulls: "},{"text":"[Rebuild On]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Toggle"}]},"clickEvent":{"action":"run_command","value":"/function explosion_rebuilder:menu/toggle_wskulls"}}]
execute unless score $wskulls_enabled s.crhf.settings matches 1 run tellraw @s [{"text":"- Wither Skulls: "},{"text":"[Rebuild Off]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Toggle"}]},"clickEvent":{"action":"run_command","value":"/function explosion_rebuilder:menu/toggle_wskulls"}}]

tellraw @s [{"text":"\n> Rebuild Wait Time: "},{"score":{"name":"$actual_wait_time","objective":"s.crhf.settings"},"color":"gold"},{"color":"gold","text":" ticks"},{"color":"gray","text":" [Edit]","hoverEvent":{"action":"show_text","contents":[{"text":"Edit"}]},"clickEvent":{"action":"suggest_command","value":"/scoreboard players set $wait_time s.crhf.settings "}},{"text":" [?]","color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"The number of ticks the datapack will wait before rebuilding an explosion. Click [Edit] and input desired time in ticks after the suggested command. (Note: 1 tick = 1/20th of a second, so the number of seconds/20 will you give you how many ticks). Must be at least 1 and a whole number"}]}}]

tellraw @s [{"text":"> Blocks Per Tick (BPT): "},{"score":{"name":"$actual_bpt","objective":"s.crhf.settings"},"color":"gold"},{"color":"gold","text":" ticks"},{"color":"gray","text":" [Edit]","hoverEvent":{"action":"show_text","contents":[{"text":"Edit"}]},"clickEvent":{"action":"suggest_command","value":"/scoreboard players set $bpt s.crhf.settings "}},{"text":" [?]","color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"The number of blocks which will be rebuilt per tick. Click [Edit] and input desired number after the suggested command. (Note: 1 tick = 1/20th of a second, so setting this number to 1 would mean 20 blocks are placed in a second. 2 would mean 40 etc.). Must be at least 1 and a whole number. Set to a high number for instant replacement."}]}}]

execute if score $rebuild_type s.crhf.settings matches 1 run tellraw @s [{"text":"> Rebuild Type: "},{"text":"[Automatic Rebuilding]","color":"light_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Toggle"}]},"clickEvent":{"action":"run_command","value":"/function explosion_rebuilder:menu/toggle_rebuild_type"}},{"text":" [?]","color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Allows you to toggle whether you'd like explosion to just drop all the blocks from the explosion, or automatically rebuid."}]}}]
execute unless score $rebuild_type s.crhf.settings matches 1 run tellraw @s [{"text":"> Rebuild Type: "},{"text":"[Always Just Drop Items]","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Toggle"}]},"clickEvent":{"action":"run_command","value":"/function explosion_rebuilder:menu/toggle_rebuild_type"}},{"text":" [?]","color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Allows you to toggle whether you'd like explosion to just drop all the blocks from the explosion, or automatically rebuid."}]}}]


#execute unless score $bpt_local s.crhf.settings matches 1 run tellraw @s [{"text":"> Global/Local BPS: "},{"text":"[Global]","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Toggle"}]},"clickEvent":{"action":"run_command","value":"/function explosion_rebuilder:menu/toggle_bpt_local"}},{"text":" [?]","color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"This changes whether or not the BPT is applies globally or per explosion. Local means if there are 2 explosions they would both regenerate at the same rate as if there was only one explosion. Global means if there are 2 explosions they would regenerate at half speed as the BPS is split between all explosions in the world (better for performance)."}]}}]

#reset
scoreboard players reset @s explosionSettings