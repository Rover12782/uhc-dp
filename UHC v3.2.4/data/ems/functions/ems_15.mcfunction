# Episode Markers - 15 Minutes
execute if score time uhc.ticks matches 18000 run title @a[tag=!global.ignore.gui,tag=!global.ignore] title {"text":"Episode Marker","color":"gold"}
execute if score time uhc.ticks matches 18000 run tellraw @a[tag=!global.ignore] {"text":"Episode Marker","color":"gold"}
execute if score time uhc.ticks matches 18000 run scoreboard players add Episode uhc.info 1
execute if score time uhc.ticks matches 18000 run scoreboard players set time uhc.ticks 0