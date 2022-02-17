# Clear Inventory
clear @a[tag=!global.ignore]

# Main Controls
execute as @a[tag=!global.ignore] run tellraw @s {"text":"[UHC Control Book]","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function uhc:books/control"},"hoverEvent":{"action":"show_text","contents":[{"text":"This books controls the main aspects of the game","color":"white"}]}}

# Customisation Options
execute as @a[tag=!global.ignore] run tellraw @s {"text":"[Customisation Options]","bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function uhc:books/customisation"},"hoverEvent":{"action":"show_text","contents":[{"text":"This books controls the different gamemodes and extra configuration","color":"white"}]}}

# Episode Marker Options
execute as @a[tag=!global.ignore] run tellraw @s {"text":"[Episodes Options]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/function uhc:books/episodes"},"hoverEvent":{"action":"show_text","contents":[{"text":"This books controls the episodes time and markers","color":"white"}]}}

# World Border Options
execute as @a[tag=!global.ignore] run tellraw @s {"text":"[World Border Options]","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/function uhc:books/wb"},"hoverEvent":{"action":"show_text","contents":[{"text":"This books controls the different wb options available","color":"white"}]}}

# Team Options
execute as @a[tag=!global.ignore] run tellraw @s {"text":"[Team Options]","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/function uhc:books/teams"},"hoverEvent":{"action":"show_text","contents":[{"text":"This books controls how the teams will be made","color":"white"}]}}

# Gamemode Options
execute as @a[tag=!global.ignore] run tellraw @s {"text":"[Gamemode Options]","bold":true,"color":"light_purple","clickEvent":{"action":"run_command","value":"/function uhc:books/gamemode"},"hoverEvent":{"action":"show_text","contents":[{"text":"This books controls if one gamemode or scenario should be choosen","color":"white"}]}}

# Get all books
execute as @a[tag=!global.ignore] run tellraw @s {"text":"[Get all books]","bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function uhc:books/get_all"},"hoverEvent":{"action":"show_text","contents":[{"text":"Get all books with one click!","color":"white"}]}}

# All in one
execute as @a[tag=!global.ignore] run tellraw @s {"text":"[World Border Options]","bold":true,"color":"white","clickEvent":{"action":"run_command","value":"/function uhc:books/all_in_one"},"hoverEvent":{"action":"show_text","contents":[{"text":"Get all books just in one book","color":"white"}]}}

# Run setup function
function uhc:setup
