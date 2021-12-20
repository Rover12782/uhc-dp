# Golden Apple Drops on Death
execute as @a[scores={uhc.c.killCount=1},tag=!global.ignore] run give @s minecraft:golden_apple{display:{Name:"{\"text\":\"Apple of the Dead\",\"italic\":\"false\"}"}} 1
scoreboard players reset @a[scores={uhc.c.killCount=1},tag=!global.ignore]