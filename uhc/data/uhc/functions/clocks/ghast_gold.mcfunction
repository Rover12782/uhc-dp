# Ghasts Drop Gold Bars
execute at @a[scores={uhc.c.ghastK=1..},tag=!global.ignore] run tag @e[type=item,distance=..5,nbt={Item:{id:"minecraft:ghast_tear"}},tag=!global.ignore] add uhc.replace.ghast.tear
execute at @e[tag=uhc.replace.ghast.tear,tag=!global.ignore] run summon minecraft:item ~ ~0.0001 ~ {Item:{id:"minecraft:gold_ingot",Count:1}}
kill @e[tag=uhc.replace.ghast.tear,tag=!global.ignore.kill,tag=!global.ignore]
scoreboard players reset @a[tag=!global.ignore] uhc.c.ghastK