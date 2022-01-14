# Gold
execute at @a[scores={uhc.c.goldM=1..}] run tag @e[type=item,distance=..5,nbt={Item:{id:"minecraft:raw_gold"}},tag=!global.ignore] add uhc.replace.gold
execute at @e[tag=uhc.replace.gold] run summon minecraft:item ~ ~0.0001 ~ {Item:{id:"minecraft:gold_ingot",Count:1}}
execute at @e[tag=uhc.replace.gold] run summon minecraft:experience_orb ~ ~0.0001 ~ {Value:1}
execute at @e[tag=uhc.replace.gold] run summon minecraft:experience_orb ~ ~0.0001 ~ {Value:1}
execute at @e[tag=uhc.replace.gold] run summon minecraft:experience_orb ~ ~0.0001 ~ {Value:1}
kill @e[tag=uhc.replace.gold]
scoreboard players reset @a uhc.c.goldM

# Iron
execute at @a[scores={uhc.c.ironM=1..}] run tag @e[type=item,distance=..5,nbt={Item:{id:"minecraft:raw_iron"}},tag=!global.ignore] add uhc.replace.iron
execute at @e[tag=uhc.replace.iron] run summon minecraft:item ~ ~0.0001 ~ {Item:{id:"minecraft:iron_ingot",Count:1}}
execute at @e[tag=uhc.replace.iron] run summon minecraft:experience_orb ~ ~0.0001 ~ {Value:1}
execute at @e[tag=uhc.replace.iron] run summon minecraft:experience_orb ~ ~0.0001 ~ {Value:1}
kill @e[tag=uhc.replace.iron]
scoreboard players reset @a uhc.c.ironM

# Potatoes
execute at @a[scores={uhc.c.potatoM=1..}] run tag @e[type=item,distance=..5,nbt={Item:{id:"minecraft:potato"}},tag=!global.ignore] add uhc.replace.potato
execute at @e[tag=uhc.replace.potato] run summon minecraft:item ~ ~0.0001 ~ {Item:{id:"minecraft:baked_potato",Count:1}}
kill @e[tag=uhc.replace.potato]
scoreboard players reset @a uhc.c.potatoM

# Rabbit
execute at @a[scores={uhc.c.rabbitK=1..}] run tag @e[type=item,distance=..5,nbt={Item:{id:"minecraft:rabbit"}},tag=!global.ignore] add uhc.replace.rabbit
execute at @e[tag=uhc.replace.rabbit] run summon minecraft:item ~ ~0.0001 ~ {Item:{id:"minecraft:cooked_rabbit",Count:1}}
kill @e[tag=uhc.replace.rabbit]
scoreboard players reset @a uhc.c.rabbitK

# Fished Fish
execute at @a[scores={uhc.c.fishCatch=1..}] run tag @e[type=item,distance=..5,nbt={Item:{id:"minecraft:cod"}}] add uhc.replace.fish
execute at @a[scores={uhc.c.fishCatch=1..}] run tag @e[type=item,distance=..5,nbt={Item:{id:"minecraft:salmon"}},tag=!global.ignore] add uhc.replace.fish
tp @e[tag=uhc.replace.fish] @p
execute if entity @a[scores={uhc.c.fishCatch=1..}] at @e[tag=uhc.replace.fish,nbt={Item:{id:"minecraft:cod"}},tag=!global.ignore] run summon minecraft:item ~ ~0.0001 ~ {Item:{id:"minecraft:cooked_cod",Count:1}}
execute if entity @a[scores={uhc.c.fishCatch=1..}] at @e[tag=uhc.replace.fish,nbt={Item:{id:"minecraft:salmon"}},tag=!global.ignore] run summon minecraft:item ~ ~0.0001 ~ {Item:{id:"minecraft:cooked_salmon",Count:1}}
kill @e[tag=uhc.replace.fish]
scoreboard players reset @a uhc.c.fishCatch

# Pig
execute at @a[scores={uhc.c.pigK=1..}] run tag @e[type=item,distance=..5,nbt={Item:{id:"minecraft:porkchop"}},tag=!global.ignore] add uhc.replace.pork
execute at @e[tag=uhc.replace.pork] run summon minecraft:item ~ ~0.0001 ~ {Item:{id:"minecraft:cooked_porkchop",Count:1}}
kill @e[tag=uhc.replace.pork]
scoreboard players reset @a uhc.c.pigK

# Salmon and Cod
execute at @a[scores={uhc.c.codK=1..}] run tag @e[type=item,distance=..5,nbt={Item:{id:"minecraft:cod"}},tag=!global.ignore] add uhc.replace.cod
execute at @a[scores={uhc.c.salmonK=1..}] run tag @e[type=item,distance=..5,nbt={Item:{id:"minecraft:salmon"}},tag=!global.ignore] add uhc.replace.salmon
execute at @e[tag=uhc.replace.cod,nbt={Item:{id:"minecraft:cod"}}] run summon minecraft:item ~ ~0.0001 ~ {Item:{id:"minecraft:cooked_cod",Count:1}}
execute at @e[tag=uhc.replace.salmon,nbt={Item:{id:"minecraft:salmon"}}] run summon minecraft:item ~ ~0.0001 ~ {Item:{id:"minecraft:cooked_salmon",Count:1}}
kill @e[tag=uhc.replace.cod]
kill @e[tag=uhc.replace.salmon]
scoreboard players reset @a uhc.c.codK
scoreboard players reset @a uhc.c.salmonK

# Chicken
execute at @a[scores={uhc.c.chickenK=1..}] run tag @e[type=item,distance=..5,nbt={Item:{id:"minecraft:chicken"}},tag=!global.ignore] add uhc.replace.chicken
execute at @e[tag=uhc.replace.chicken] run summon minecraft:item ~ ~0.0001 ~ {Item:{id:"minecraft:cooked_chicken",Count:1}}
kill @e[tag=uhc.replace.chicken]
scoreboard players reset @a uhc.c.chickenK

# Cow
execute at @a[scores={uhc.c.cowK=1..}] run tag @e[type=item,distance=..5,nbt={Item:{id:"minecraft:beef"}},tag=!global.ignore] add uhc.replace.beef
execute at @e[tag=uhc.replace.beef] run summon minecraft:item ~ ~0.0001 ~ {Item:{id:"minecraft:cooked_beef",Count:1}}
kill @e[tag=uhc.replace.beef]
scoreboard players reset @a uhc.c.cowK

# Sheep
execute at @a[scores={uhc.c.sheepK=1..}] run tag @e[type=item,distance=..5,nbt={Item:{id:"minecraft:mutton"}},tag=!global.ignore] add uhc.replace.mutton
execute at @e[tag=uhc.replace.mutton] run summon minecraft:item ~ ~0.0001 ~ {Item:{id:"minecraft:cooked_mutton",Count:1}}
kill @e[tag=uhc.replace.mutton]
scoreboard players reset @a uhc.c.sheepK

# Kelp
execute at @a[scores={uhc.c.kelpM=1..}] run tag @e[type=item,distance=..5,nbt={Item:{id:"minecraft:kelp"}},tag=!global.ignore] add uhc.replace.kelp
execute at @e[tag=uhc.replace.kelp] run summon minecraft:item ~ ~0.0001 ~ {Item:{id:"minecraft:dried_kelp",Count:1}}
kill @e[tag=uhc.replace.kelp]
scoreboard players reset @a uhc.c.kelpM
