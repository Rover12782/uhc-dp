# Stop Game Message
tellraw @s[tag=!global.ignore] ["",{"text":"You are about to stop your UHC. This will end your game. This cannot be undone - do you wish to proceed?\n"},{"text":"[YES]","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/function minecraft:uninstall"}}]