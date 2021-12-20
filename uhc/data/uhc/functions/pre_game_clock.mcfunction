### World Border
# Size Display
execute store result score wbSize uhc.trigger run worldborder get
scoreboard players enable @a[tag=!global.ignore] uhc.wb.display
function uhc:wb_toggle
execute store result score WorldBorder uhc.info run worldborder get