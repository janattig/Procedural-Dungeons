execute store result score @s pd_display run data get entity @s Pos[2]
scoreboard players operation @s pd_display += %sizeZ pd_display
scoreboard players add @s pd_display 4
execute store result entity @s Pos[2] double 1.0 run scoreboard players get @s pd_display
scoreboard players reset @s pd_display