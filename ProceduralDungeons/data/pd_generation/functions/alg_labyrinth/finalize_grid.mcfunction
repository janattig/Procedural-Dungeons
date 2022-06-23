# delete all unconnected rooms
execute as @e[tag=pd_room, tag=!lab_connected] at @s run kill @e[distance=..2]

# convert connectivity tags into scoreboard values
execute as @e[tag=pd_room] at @s run scoreboard players set @s pd_room_border_n 0
execute as @e[tag=pd_room] at @s run scoreboard players set @s pd_room_border_s 0
execute as @e[tag=pd_room] at @s run scoreboard players set @s pd_room_border_e 0
execute as @e[tag=pd_room] at @s run scoreboard players set @s pd_room_border_w 0
execute as @e[tag=pd_room, tag=lab_connects_north] at @s run scoreboard players set @s pd_room_border_n 1
execute as @e[tag=pd_room, tag=lab_connects_south] at @s run scoreboard players set @s pd_room_border_s 1
execute as @e[tag=pd_room, tag=lab_connects_east] at @s run scoreboard players set @s pd_room_border_e 1
execute as @e[tag=pd_room, tag=lab_connects_west] at @s run scoreboard players set @s pd_room_border_w 1
