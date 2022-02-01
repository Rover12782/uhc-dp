### Scoreboard Resets
scoreboard players set @a[tag=!global.ignore] uhc.deathCount 0
scoreboard players set @a[tag=!global.ignore] uhc.c.killCount 0

### Player Prep
effect clear @a[tag=!global.ignore]
clear @a[tag=!global.ignore]
xp set @a[tag=!global.ignore] 0 points
xp set @a[tag=!global.ignore] 0 levels
advancement revoke @a[tag=!global.ignore] everything
gamemode survival @a[tag=!global.ignore]
execute if score more_hearts uhc.trigger matches 1 run function uhc:more_hearts
effect give @a[tag=!global.ignore] saturation 1 100 true
effect give @a[tag=!global.ignore] regeneration 1 255 true

### Selections Display
function uhc:selections

### Hastey Gamemode
execute if score hastey uhc.trigger matches 1 run give @a[tag=!global.ignore] minecraft:stone_sword
execute if score hastey uhc.trigger matches 1 run give @a[tag=!global.ignore] minecraft:stone_pickaxe{Enchantments:[{id:efficiency,lvl:3},{id:unbreaking,lvl:1}]}
execute if score hastey uhc.trigger matches 1 run give @a[tag=!global.ignore] minecraft:stone_axe{Enchantments:[{id:efficiency,lvl:3},{id:unbreaking,lvl:1}]}
execute if score hastey uhc.trigger matches 1 run give @a[tag=!global.ignore] minecraft:stone_shovel{Enchantments:[{id:efficiency,lvl:3},{id:unbreaking,lvl:1}]}

### Blood Diamonds Gamemode
scoreboard players reset @a[tag=!global.ignore] uhc.g.diamondsM

### Clocks
scoreboard players set start uhc.trigger 1

### World Prep
execute if score wb_shrinking uhc.trigger matches 1 if score wb_1k uhc.trigger matches 1 run function wb:shrinking/wb_shrinking_1k
execute if score wb_shrinking uhc.trigger matches 1 if score wb_2k uhc.trigger matches 1 run function wb:shrinking/wb_shrinking_2k
execute if score wb_shrinking uhc.trigger matches 1 if score wb_3k uhc.trigger matches 1 run function wb:shrinking/wb_shrinking_3k
execute if score wb_shrinking uhc.trigger matches 1 if score wb_4k uhc.trigger matches 1 run function wb:shrinking/wb_shrinking_4k
execute if score wb_shrinking uhc.trigger matches 1 if score wb_5k uhc.trigger matches 1 run function wb:shrinking/wb_shrinking_5k
execute if score wb_shrinking uhc.trigger matches 0 if score wb_1k uhc.trigger matches 1 run function wb:static/wb_static_1k
execute if score wb_shrinking uhc.trigger matches 0 if score wb_2k uhc.trigger matches 1 run function wb:static/wb_static_2k
execute if score wb_shrinking uhc.trigger matches 0 if score wb_3k uhc.trigger matches 1 run function wb:static/wb_static_3k
execute if score wb_shrinking uhc.trigger matches 0 if score wb_4k uhc.trigger matches 1 run function wb:static/wb_static_4k
execute if score wb_shrinking uhc.trigger matches 0 if score wb_5k uhc.trigger matches 1 run function wb:static/wb_static_5k

### Episode Markers
scoreboard players set time uhc.ticks 0
scoreboard players add start uhc.ticks 1
scoreboard players add Episode uhc.info 1

### Time & weather
gamerule doDaylightCycle true
gamerule doWeatherCycle true
time set 0

### Titles
function uhc:countdown/cd_5
