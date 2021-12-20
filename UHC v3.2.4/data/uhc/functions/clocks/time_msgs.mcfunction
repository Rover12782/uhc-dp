# Start & End of Day Messages
execute store result score time uhc.trigger run time query daytime
execute if score uhc.time trigger matches 1000 run tellraw @a[tag=!global.ignore] {"text":"It is now daytime.","color":"blue"}
execute if score uhc.time trigger matches 13000 run tellraw @a[tag=!global.ignore] {"text":"It is now nightime.","color":"blue"}