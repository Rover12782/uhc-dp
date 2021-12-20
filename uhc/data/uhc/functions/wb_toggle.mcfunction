# World Border Display
execute as @a[tag=!global.ignore] if score @s uhc.wb.display matches 1 run function uhc:wb_display
execute as @a[tag=!global.ignore] if score @s uhc.wb.display matches 2 run scoreboard players set @s uhc.wb.display 0
