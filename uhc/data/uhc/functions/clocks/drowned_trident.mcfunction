# Drowned Trident
execute at @a[scores={uhc.drownedK=1..},tag=!global.ignore] run summon minecraft:item ~ ~0.0001 ~ {Item:{id:"minecraft:trident",Count:1}}
scoreboard players reset @a[tag=!global.ignore] uhc.drownedK