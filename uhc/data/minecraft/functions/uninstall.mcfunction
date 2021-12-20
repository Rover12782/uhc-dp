### Remove Scoreboards
scoreboard objectives remove uhc.c.ironM
scoreboard objectives remove uhc.c.goldM
scoreboard objectives remove uhc.c.rabbitK
scoreboard objectives remove uhc.c.potatoM
scoreboard objectives remove uhc.c.fishCatch
scoreboard objectives remove uhc.c.pigK
scoreboard objectives remove uhc.c.codK
scoreboard objectives remove uhc.c.salmonK
scoreboard objectives remove uhc.c.chickenK
scoreboard objectives remove uhc.c.cowK
scoreboard objectives remove uhc.c.sheepK
scoreboard objectives remove uhc.c.kelpM
scoreboard objectives remove uhc.deathCount
scoreboard objectives remove uhc.ticks
scoreboard objectives remove uhc.health
scoreboard objectives remove uhc.trigger
scoreboard objectives remove uhc.c.killCount
scoreboard objectives remove uhc.c.gravelM
scoreboard objectives remove uhc.ems
scoreboard objectives remove uhc.wb.display
scoreboard objectives remove uhc.c.ghastK
scoreboard objectives remove uhc.c.drownedK
scoreboard objectives remove uhc.info
scoreboard objectives remove uhc.tm.check
scoreboard objectives remove uhc.g.diamondsM


### Remove Teams
team remove uhc.aqua
team remove uhc.black
team remove uhc.blue
team remove uhc.darkAqua
team remove uhc.darkBlue
team remove uhc.darkGray
team remove uhc.darkGreen
team remove uhc.darkPurple
team remove uhc.darkRed
team remove uhc.gold
team remove uhc.gray
team remove uhc.green
team remove uhc.lightPurple
team remove uhc.red
team remove uhc.white
team remove uhc.yellow


### World
worldborder set 60000000
fill -7 240 -7 7 244 7 minecraft:air
kill @e[type=armor_stand,tag=!global.ignore,tag=!global.ignore.kill]


### Players
clear @a[tag=!global.ignore]


### Confirmation Message
tellraw @a[tag=!global.ignore] "The UHC Data Pack has been uninstalled. To resetup/install use the control books which you can gain from running the command /reload"
