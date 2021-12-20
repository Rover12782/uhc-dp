# Flint
execute at @a[scores={uhc.c.gravelM=1..},tag=!global.ignore] run tag @e[type=item,distance=..5,nbt={Item:{id:"minecraft:gravel"}},tag=!global.ignore] add uhc.replace.gravel
execute at @e[tag=uhc.replace.gravel,tag=!global.ignore] run summon minecraft:item ~ ~0.0001 ~ {Item:{id:"minecraft:flint",Count:1}}
kill @e[tag=uhc.replace.gravel,tag=!global.ignore,tag=!global.ignore.kill]
scoreboard players reset @a[tag=!global.ignore] uhc.c.gravelM