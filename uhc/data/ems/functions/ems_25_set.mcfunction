# Episode Markers - 25 Minutes Selection Function
scoreboard players set ems_10 uhc.ems 0
scoreboard players set ems_15 uhc.ems 0
scoreboard players set ems_20 uhc.ems 0
scoreboard players set ems_25 uhc.ems 1
scoreboard players set ems_30 uhc.ems 0
tellraw @a[tag=!global.ignore] ["",{"text":"Episode Length: ","color":"gold"},{"text":"25 minutes"}]