# Blood Diamonds Damage Function
execute as @a[tag=!global.ignore] if score @s uhc.g.diamondsM matches 1 run effect give @s minecraft:wither 1 1 true
execute as @a[tag=!global.ignore] if score @s uhc.g.diamondsM matches 1 run scoreboard players reset @a uhc.g.diamondsM