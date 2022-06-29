# if the room has the connected tag
execute as @s[tag=lab_connected] run execute as @e[type=armor_stand,distance=..0.1] run item replace entity @s armor.head with minecraft:emerald_block
execute as @s[tag=pd_start] run execute as @e[type=armor_stand,distance=..0.1] run item replace entity @s armor.head with minecraft:diamond_block
