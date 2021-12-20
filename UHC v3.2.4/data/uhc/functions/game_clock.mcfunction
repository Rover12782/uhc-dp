### Episode Markers
execute if score start uhc.ticks matches 2 run function uhc:clocks/episode_markers


### General
# Dead Players - Spectators
gamemode spectator @a[scores={uhc.deathCount=1..},gamemode=!spectator,tag=!global.ignore]
team leave @a[scores={uhc.deathCount=1..},tag=!global.ignore]
scoreboard players set @a[scores={uhc.deathCount=1..},tag=!global.ignore] uhc.deathCount 0



### Customisation
# Auto Smelt
execute if score auto_smelt uhc.trigger matches 1 run function uhc:clocks/auto_smelt

# Golden Apple Death
execute if score golden_apple uhc.trigger matches 1 run function uhc:clocks/golden_apple

# No Extra Stones
execute if score delete_stones uhc.trigger matches 1 run function uhc:clocks/delete_stones

# Always Gravel
execute if score always_flint uhc.trigger matches 1 run function uhc:clocks/always_flint

# No AI
execute if score no_ai uhc.trigger matches 1 run function uhc:clocks/no_ai

# Ghast Gold
execute if score ghast_gold uhc.trigger matches 1 run function uhc:clocks/ghast_gold

# Always Trident
execute if score drowned_trident uhc.trigger matches 1 run function uhc:clocks/drowned_trident

# No Nether
execute if score no_nether uhc.trigger matches 1 run function uhc:clocks/no_nether

# Start & End of Day Messages
execute if score time_msg uhc.trigger matches 1 run function uhc:clocks/time_msgs



### Gamemodes
# Hastey
execute if score hastey uhc.trigger matches 1 run function uhc:clocks/hastey_gamemode

# Blood Diamonds
execute if score bdiamonds uhc.trigger matches 1 run function uhc:clocks/blood_diamonds_gamemode



### Info Screens
# World Border
execute store result score WorldBorder uhc.info run worldborder get

# Player Info
scoreboard players set AlivePlayers uhc.info 0
execute as @a[gamemode=survival,tag=!global.ignore] run scoreboard players add AlivePlayers uhc.info 1
scoreboard players set DeadPlayers uhc.info 0
execute as @a[gamemode=spectator,tag=!global.ignore] run scoreboard players add DeadPlayers uhc.info 1

# Time Info
scoreboard players add minutes uhc.ticks 1
execute if score minutes uhc.ticks matches 1200 run scoreboard players add MinutesPlayed uhc.info 1
execute if score minutes uhc.ticks matches 1200 run scoreboard players set minutes uhc.ticks 0

# World Border Size Display
execute store result score wbSize uhc.trigger run worldborder get
scoreboard players enable @a[tag=!global.ignore] wbDisplay
function uhc:wb_toggle



### Winner Title
# Team Member Count
execute store result score aqua uhc.tm.check run team list aqua
execute store result score black uhc.tm.check run team list black
execute store result score blue uhc.tm.check run team list blue
execute store result score dark_aqua uhc.tm.check run team list dark_aqua
execute store result score dark_blue uhc.tm.check run team list dark_blue
execute store result score dark_gray uhc.tm.check run team list dark_gray
execute store result score dark_green uhc.tm.check run team list dark_green
execute store result score dark_purple uhc.tm.check run team list dark_purple
execute store result score dark_red uhc.tm.check run team list dark_red
execute store result score gold uhc.tm.check run team list gold
execute store result score gray uhc.tm.check run team list gray
execute store result score green uhc.tm.check run team list green
execute store result score light_purple uhc.tm.check run team list light_purple
execute store result score red uhc.tm.check run team list red
execute store result score white uhc.tm.check run team list white
execute store result score yellow uhc.tm.check run team list yellow

# Detector
execute if score aqua uhc.tm.check > 0 trigger if score black uhc.tm.check matches 0 if score blue uhc.tm.check matches 0 if score dark_aqua uhc.tm.check matches 0 if score dark_blue uhc.tm.check matches 0 if score dark_gray uhc.tm.check matches 0 if score dark_green uhc.tm.check matches 0 if score dark_purple uhc.tm.check matches 0 if score dark_red uhc.tm.check matches 0 if score gold uhc.tm.check matches 0 if score gray uhc.tm.check matches 0 if score green uhc.tm.check matches 0 if score light_purple uhc.tm.check matches 0 if score red uhc.tm.check matches 0 if score white uhc.tm.check matches 0 run title @a[tag=!global.ignore.gui,tag=!global.ignore] title ["",{"text":"Aqua","color":"aqua"},{"text":" team wins!","color":"gold"}]
execute if score aqua uhc.tm.check matches 0 if score black uhc.tm.check > 0 trigger if score blue uhc.tm.check matches 0 if score dark_aqua uhc.tm.check matches 0 if score dark_blue uhc.tm.check matches 0 if score dark_gray uhc.tm.check matches 0 if score dark_green uhc.tm.check matches 0 if score dark_purple uhc.tm.check matches 0 if score dark_red uhc.tm.check matches 0 if score gold uhc.tm.check matches 0 if score gray uhc.tm.check matches 0 if score green uhc.tm.check matches 0 if score light_purple uhc.tm.check matches 0 if score red uhc.tm.check matches 0 if score white uhc.tm.check matches 0 run title @a[tag=!global.ignore.gui,tag=!global.ignore] title ["",{"text":"Black","color":"black"},{"text":" team wins!","color":"gold"}]
execute if score aqua uhc.tm.check matches 0 if score black uhc.tm.check matches 0 if score blue uhc.tm.check > 0 trigger if score dark_aqua uhc.tm.check matches 0 if score dark_blue uhc.tm.check matches 0 if score dark_gray uhc.tm.check matches 0 if score dark_green uhc.tm.check matches 0 if score dark_purple uhc.tm.check matches 0 if score dark_red uhc.tm.check matches 0 if score gold uhc.tm.check matches 0 if score gray uhc.tm.check matches 0 if score green uhc.tm.check matches 0 if score light_purple uhc.tm.check matches 0 if score red uhc.tm.check matches 0 if score white uhc.tm.check matches 0 run title @a[tag=!global.ignore.gui,tag=!global.ignore] title ["",{"text":"Blue","color":"blue"},{"text":" team wins!","color":"gold"}]
execute if score aqua uhc.tm.check matches 0 if score black uhc.tm.check matches 0 if score blue uhc.tm.check matches 0 if score dark_aqua uhc.tm.check > 0 trigger if score dark_blue uhc.tm.check matches 0 if score dark_gray uhc.tm.check matches 0 if score dark_green uhc.tm.check matches 0 if score dark_purple uhc.tm.check matches 0 if score dark_red uhc.tm.check matches 0 if score gold uhc.tm.check matches 0 if score gray uhc.tm.check matches 0 if score green uhc.tm.check matches 0 if score light_purple uhc.tm.check matches 0 if score red uhc.tm.check matches 0 if score white uhc.tm.check matches 0 run title @a[tag=!global.ignore.gui,tag=!global.ignore] title ["",{"text":"Dark Aqua","color":"dark_aqua"},{"text":" team wins!","color":"gold"}]
execute if score aqua uhc.tm.check matches 0 if score black uhc.tm.check matches 0 if score blue uhc.tm.check matches 0 if score dark_aqua uhc.tm.check matches 0 if score dark_blue uhc.tm.check > 0 trigger if score dark_gray uhc.tm.check matches 0 if score dark_green uhc.tm.check matches 0 if score dark_purple uhc.tm.check matches 0 if score dark_red uhc.tm.check matches 0 if score gold uhc.tm.check matches 0 if score gray uhc.tm.check matches 0 if score green uhc.tm.check matches 0 if score light_purple uhc.tm.check matches 0 if score red uhc.tm.check matches 0 if score white uhc.tm.check matches 0 run title @a[tag=!global.ignore.gui,tag=!global.ignore] title ["",{"text":"Dark Blue","color":"dark_blue"},{"text":" team wins!","color":"gold"}]
execute if score aqua uhc.tm.check matches 0 if score black uhc.tm.check matches 0 if score blue uhc.tm.check matches 0 if score dark_aqua uhc.tm.check matches 0 if score dark_blue uhc.tm.check matches 0 if score dark_gray uhc.tm.check > 0 trigger if score dark_green uhc.tm.check matches 0 if score dark_purple uhc.tm.check matches 0 if score dark_red uhc.tm.check matches 0 if score gold uhc.tm.check matches 0 if score gray uhc.tm.check matches 0 if score green uhc.tm.check matches 0 if score light_purple uhc.tm.check matches 0 if score red uhc.tm.check matches 0 if score white uhc.tm.check matches 0 run title @a[tag=!global.ignore.gui,tag=!global.ignore] title ["",{"text":"Dark Gray","color":"dark_gray"},{"text":" team wins!","color":"gold"}]
execute if score aqua uhc.tm.check matches 0 if score black uhc.tm.check matches 0 if score blue uhc.tm.check matches 0 if score dark_aqua uhc.tm.check matches 0 if score dark_blue uhc.tm.check matches 0 if score dark_gray uhc.tm.check matches 0 if score dark_green uhc.tm.check > 0 trigger if score dark_purple uhc.tm.check matches 0 if score dark_red uhc.tm.check matches 0 if score gold uhc.tm.check matches 0 if score gray uhc.tm.check matches 0 if score green uhc.tm.check matches 0 if score light_purple uhc.tm.check matches 0 if score red uhc.tm.check matches 0 if score white uhc.tm.check matches 0 run title @a[tag=!global.ignore.gui,tag=!global.ignore] title ["",{"text":"Dark Green","color":"dark_green"},{"text":" team wins!","color":"gold"}]
execute if score aqua uhc.tm.check matches 0 if score black uhc.tm.check matches 0 if score blue uhc.tm.check matches 0 if score dark_aqua uhc.tm.check matches 0 if score dark_blue uhc.tm.check matches 0 if score dark_gray uhc.tm.check matches 0 if score dark_green uhc.tm.check matches 0 if score dark_purple uhc.tm.check > 0 trigger if score dark_red uhc.tm.check matches 0 if score gold uhc.tm.check matches 0 if score gray uhc.tm.check matches 0 if score green uhc.tm.check matches 0 if score light_purple uhc.tm.check matches 0 if score red uhc.tm.check matches 0 if score white uhc.tm.check matches 0 run title @a[tag=!global.ignore.gui,tag=!global.ignore] title ["",{"text":"Purple","color":"dark_purple"},{"text":" team wins!","color":"gold"}]
execute if score aqua uhc.tm.check matches 0 if score black uhc.tm.check matches 0 if score blue uhc.tm.check matches 0 if score dark_aqua uhc.tm.check matches 0 if score dark_blue uhc.tm.check matches 0 if score dark_gray uhc.tm.check matches 0 if score dark_green uhc.tm.check matches 0 if score dark_purple uhc.tm.check matches 0 if score dark_red uhc.tm.check > 0 trigger if score gold uhc.tm.check matches 0 if score gray uhc.tm.check matches 0 if score green uhc.tm.check matches 0 if score light_purple uhc.tm.check matches 0 if score red uhc.tm.check matches 0 if score white uhc.tm.check matches 0 run title @a[tag=!global.ignore.gui,tag=!global.ignore] title ["",{"text":"Dark Red","color":"dark_red"},{"text":" team wins!","color":"gold"}]
execute if score aqua uhc.tm.check matches 0 if score black uhc.tm.check matches 0 if score blue uhc.tm.check matches 0 if score dark_aqua uhc.tm.check matches 0 if score dark_blue uhc.tm.check matches 0 if score dark_gray uhc.tm.check matches 0 if score dark_green uhc.tm.check matches 0 if score dark_purple uhc.tm.check matches 0 if score dark_red uhc.tm.check matches 0 if score gold uhc.tm.check > 0 trigger if score gray uhc.tm.check matches 0 if score green uhc.tm.check matches 0 if score light_purple uhc.tm.check matches 0 if score red uhc.tm.check matches 0 if score white uhc.tm.check matches 0 run title @a[tag=!global.ignore.gui,tag=!global.ignore] title ["",{"text":"Gold","color":"gold"},{"text":" team wins!","color":"gold"}]
execute if score aqua uhc.tm.check matches 0 if score black uhc.tm.check matches 0 if score blue uhc.tm.check matches 0 if score dark_aqua uhc.tm.check matches 0 if score dark_blue uhc.tm.check matches 0 if score dark_gray uhc.tm.check matches 0 if score dark_green uhc.tm.check matches 0 if score dark_purple uhc.tm.check matches 0 if score dark_red uhc.tm.check matches 0 if score gold uhc.tm.check matches 0 if score gray uhc.tm.check > 0 trigger if score green uhc.tm.check matches 0 if score light_purple uhc.tm.check matches 0 if score red uhc.tm.check matches 0 if score white uhc.tm.check matches 0 run title @a[tag=!global.ignore.gui,tag=!global.ignore] title ["",{"text":"Gray","color":"gray"},{"text":" team wins!","color":"gold"}]
execute if score aqua uhc.tm.check matches 0 if score black uhc.tm.check matches 0 if score blue uhc.tm.check matches 0 if score dark_aqua uhc.tm.check matches 0 if score dark_blue uhc.tm.check matches 0 if score dark_gray uhc.tm.check matches 0 if score dark_green uhc.tm.check matches 0 if score dark_purple uhc.tm.check matches 0 if score dark_red uhc.tm.check matches 0 if score gold uhc.tm.check matches 0 if score gray uhc.tm.check matches 0 if score green uhc.tm.check > 0 trigger if score light_purple uhc.tm.check matches 0 if score red uhc.tm.check matches 0 if score white uhc.tm.check matches 0 run title @a[tag=!global.ignore.gui,tag=!global.ignore] title ["",{"text":"Green","color":"green"},{"text":" team wins!","color":"gold"}]
execute if score aqua uhc.tm.check matches 0 if score black uhc.tm.check matches 0 if score blue uhc.tm.check matches 0 if score dark_aqua uhc.tm.check matches 0 if score dark_blue uhc.tm.check matches 0 if score dark_gray uhc.tm.check matches 0 if score dark_green uhc.tm.check matches 0 if score dark_purple uhc.tm.check matches 0 if score dark_red uhc.tm.check matches 0 if score gold uhc.tm.check matches 0 if score gray uhc.tm.check matches 0 if score green uhc.tm.check matches 0 if score light_purple uhc.tm.check > 0 trigger if score red uhc.tm.check matches 0 if score white uhc.tm.check matches 0 run title @a[tag=!global.ignore.gui,tag=!global.ignore] title ["",{"text":"Pink","color":"light_purple"},{"text":" team wins!","color":"gold"}]
execute if score aqua uhc.tm.check matches 0 if score black uhc.tm.check matches 0 if score blue uhc.tm.check matches 0 if score dark_aqua uhc.tm.check matches 0 if score dark_blue uhc.tm.check matches 0 if score dark_gray uhc.tm.check matches 0 if score dark_green uhc.tm.check matches 0 if score dark_purple uhc.tm.check matches 0 if score dark_red uhc.tm.check matches 0 if score gold uhc.tm.check matches 0 if score gray uhc.tm.check matches 0 if score green uhc.tm.check matches 0 if score light_purple uhc.tm.check matches 0 if score red uhc.tm.check > 0 trigger if score white uhc.tm.check matches 0 run title @a[tag=!global.ignore.gui,tag=!global.ignore] title ["",{"text":"Red","color":"red"},{"text":" team wins!","color":"gold"}]
execute if score aqua uhc.tm.check matches 0 if score black uhc.tm.check matches 0 if score blue uhc.tm.check matches 0 if score dark_aqua uhc.tm.check matches 0 if score dark_blue uhc.tm.check matches 0 if score dark_gray uhc.tm.check matches 0 if score dark_green uhc.tm.check matches 0 if score dark_purple uhc.tm.check matches 0 if score dark_red uhc.tm.check matches 0 if score gold uhc.tm.check matches 0 if score gray uhc.tm.check matches 0 if score green uhc.tm.check matches 0 if score light_purple uhc.tm.check matches 0 if score red uhc.tm.check matches 0 if score white uhc.tm.check > 0 trigger run title @a[tag=!global.ignore.gui,tag=!global.ignore] title ["",{"text":"White","color":"white"},{"text":" team wins!","color":"gold"}]
