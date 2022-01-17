### Gamerules / World Prep
gamerule naturalRegeneration false
gamerule spawnRadius 0
gamerule commandBlockOutput false
gamerule logAdminCommands false
gamerule doDaylightCycle false
gamerule doWeatherCycle false
time set day



### Holding Chamber
fill -7 240 -7 7 244 7 minecraft:barrier hollow
fill -7 244 -7 7 244 7 minecraft:air
summon armor_stand 0 241 -7 {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{id:"minecraft:golden_apple",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"Rover1_"}}],CustomName:'{"text":"UHC Data Pack By Rover","color":"gold"}'}
tp @a[tag=!global.ignore,tag=!global.ignore.pos] 0 241 0
setworldspawn 0 241 0



### Teams
team add uhc.aqua
team add uhc.black
team add uhc.blue
team add uhc.darkAqua
team add uhc.darkBlue
team add uhc.darkGray
team add uhc.darkGreen
team add uhc.darkPurple
team add uhc.darkRed
team add uhc.gold
team add uhc.gray
team add uhc.green
team add uhc.lightPurple
team add uhc.red
team add uhc.white
team add uhc.yellow

# Colour Teams
team modify uhc.aqua color aqua
team modify uhc.black color black
team modify uhc.blue color blue
team modify uhc.darkAqua color dark_aqua
team modify uhc.darkBlue color dark_blue
team modify uhc.darkGray color dark_gray
team modify uhc.darkGreen color dark_green
team modify uhc.darkPurple color dark_purple
team modify uhc.darkRed color dark_red
team modify uhc.gold color gold
team modify uhc.gray color gray
team modify uhc.green color green
team modify uhc.lightPurple color light_purple
team modify uhc.red color red
team modify uhc.white color white
team modify uhc.yellow color yellow

# Friendly Fire Off
team modify uhc.aqua friendlyFire false
team modify uhc.black friendlyFire false
team modify uhc.blue friendlyFire false
team modify uhc.darkAqua friendlyFire false
team modify uhc.darkBlue friendlyFire false
team modify uhc.darkGray friendlyFire false
team modify uhc.darkGreen friendlyFire false
team modify uhc.darkPurple friendlyFire false
team modify uhc.darkRed friendlyFire false
team modify uhc.gold friendlyFire false
team modify uhc.gray friendlyFire false
team modify uhc.green friendlyFire false
team modify uhc.lightPurple friendlyFire false
team modify uhc.red friendlyFire false
team modify uhc.white friendlyFire false
team modify uhc.yellow friendlyFire false



### Scoreboards
## Scoreboard Adding
# Health
scoreboard objectives add uhc.health health "Health"

# Episode Markers
scoreboard objectives add uhc.ticks dummy
scoreboard objectives add uhc.ems dummy

# General
scoreboard objectives add uhc.trigger dummy
scoreboard objectives add uhc.info dummy {"text":"Game Stats","color":"gold"}
scoreboard objectives add uhc.deathCount deathCount

# Gamemodes
scoreboard objectives add uhc.g.diamondsM minecraft.mined:minecraft.diamond_ore

# Auto Smelt
scoreboard objectives add uhc.c.ironM minecraft.mined:minecraft.iron_ore
scoreboard objectives add uhc.c.goldM minecraft.mined:minecraft.gold_ore
scoreboard objectives add uhc.c.copperM minecraft.mined:minecraft.copper_ore
scoreboard objectives add uhc.c.DironM minecraft.mined:minecraft.deepslate_iron_ore
scoreboard objectives add uhc.c.DgoldM minecraft.mined:minecraft.deepslate_gold_ore
scoreboard objectives add uhc.c.DcopperM minecraft.mined:minecraft.deepslate_copper_ore
scoreboard objectives add uhc.c.rabbitK minecraft.killed:minecraft.rabbit
scoreboard objectives add uhc.c.potatoM minecraft.mined:minecraft.potatoes
scoreboard objectives add uhc.c.fishCatch minecraft.custom:minecraft.fish_caught
scoreboard objectives add uhc.c.pigK minecraft.killed:minecraft.pig
scoreboard objectives add uhc.c.codK minecraft.killed:minecraft.cod
scoreboard objectives add uhc.c.salmonK minecraft.killed:minecraft.salmon
scoreboard objectives add uhc.c.chickenK minecraft.killed:minecraft.chicken
scoreboard objectives add uhc.c.cowK minecraft.killed:minecraft.cow
scoreboard objectives add uhc.c.sheepK minecraft.killed:minecraft.sheep
scoreboard objectives add uhc.c.kelpM minecraft.mined:minecraft.kelp

# Golden Apple Death
scoreboard objectives add uhc.c.killCount minecraft.custom:minecraft.player_kills

# Always Flint
scoreboard objectives add uhc.c.gravelM minecraft.mined:minecraft.gravel

# Ghast Gold
scoreboard objectives add uhc.c.ghastK minecraft.killed:minecraft.ghast

# Drowned Trident
scoreboard objectives add uhc.c.drownedK minecraft.killed:minecraft.drowned

# Team Check
scoreboard objectives add uhc.tm.check dummy

# World Border
scoreboard objectives add uhc.wb.display trigger


## Scoreboard Modifying
# Health
scoreboard objectives setdisplay list uhc.health

# Episode Markers
scoreboard players set ems_10 uhc.ems 0
scoreboard players set ems_15 uhc.ems 0
scoreboard players set ems_20 uhc.ems 0
scoreboard players set ems_25 uhc.ems 0
scoreboard players set ems_30 uhc.ems 0

# General
scoreboard players set start uhc.trigger 0
scoreboard players set time uhc.trigger 0

# Customisation Trigger
scoreboard players set always_flint uhc.trigger 0
scoreboard players set auto_smelt uhc.trigger 0
scoreboard players set golden_apple uhc.trigger 0
scoreboard players set more_hearts uhc.trigger 0
scoreboard players set delete_stones uhc.trigger 0
scoreboard players set no_ai uhc.trigger 0
scoreboard players set ghast_gold uhc.trigger 0
scoreboard players set drowned_trident uhc.trigger 0
scoreboard players set no_nether uhc.trigger 0
scoreboard players set time_msg uhc.trigger 0

# Gamemodes Trigger
scoreboard players set hastey uhc.trigger 0
scoreboard players set bdiamonds uhc.trigger 0

# Customisation Info
scoreboard players set Episode uhc.info 0
scoreboard players set MinutesPlayed uhc.info 0

# World Border
scoreboard players set wb_shrinking uhc.trigger 1
scoreboard players set wb_1k uhc.trigger 0
scoreboard players set wb_2k uhc.trigger 1
scoreboard players set wb_3k uhc.trigger 0
scoreboard players set wb_4k uhc.trigger 0
scoreboard players set wb_5k uhc.trigger 0



### Comformation Message
tellraw @a[tag=!global.ignore] {"text":"Setup Complete","color":"gold"}
