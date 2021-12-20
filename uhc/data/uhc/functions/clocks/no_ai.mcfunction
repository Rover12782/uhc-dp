# Removes AI from passive animals
execute as @e[type=#uhc:passive_entities,tag=!global.ignore] at @s run data merge entity @s {NoAI:1b}