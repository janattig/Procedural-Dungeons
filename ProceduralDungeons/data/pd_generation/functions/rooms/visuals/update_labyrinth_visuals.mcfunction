# summon armorstands on the sides
execute unless entity @e[tag=pd_decoration, tag=pd_north, type=minecraft:armor_stand, distance=..3] run summon armor_stand ~ ~ ~-1.5 {NoGravity:1, Tags:["pd_decoration", "pd_north"], NoBasePlate:0, Small:1, NoHitBox:1, Marker:1b, Invisible:1}
execute unless entity @e[tag=pd_decoration, tag=pd_south, type=minecraft:armor_stand, distance=..3] run summon armor_stand ~ ~ ~1.5 {NoGravity:1, Tags:["pd_decoration", "pd_south"], NoBasePlate:0, Small:1, NoHitBox:1, Marker:1b, Invisible:1}
execute unless entity @e[tag=pd_decoration, tag=pd_east, type=minecraft:armor_stand, distance=..3] run summon armor_stand ~1.5 ~ ~ {NoGravity:1, Tags:["pd_decoration", "pd_east"], NoBasePlate:0, Small:1, NoHitBox:1, Marker:1b, Invisible:1}
execute unless entity @e[tag=pd_decoration, tag=pd_west, type=minecraft:armor_stand, distance=..3] run summon armor_stand ~-1.5 ~ ~ {NoGravity:1, Tags:["pd_decoration", "pd_west"], NoBasePlate:0, Small:1, NoHitBox:1, Marker:1b, Invisible:1}

# check the sides
execute as @s[tag=lab_checked_north, tag=lab_connects_north] run execute as @e[tag=pd_north,distance=..3] run item replace entity @s armor.head with minecraft:emerald_block
execute as @s[tag=lab_checked_north, tag=!lab_connects_north] run execute as @e[tag=pd_north,distance=..3] run item replace entity @s armor.head with minecraft:redstone_block

execute as @s[tag=lab_checked_south, tag=lab_connects_south] run execute as @e[tag=pd_south,distance=..3] run item replace entity @s armor.head with minecraft:emerald_block
execute as @s[tag=lab_checked_south, tag=!lab_connects_south] run execute as @e[tag=pd_south,distance=..3] run item replace entity @s armor.head with minecraft:redstone_block

execute as @s[tag=lab_checked_west, tag=lab_connects_west] run execute as @e[tag=pd_west,distance=..3] run item replace entity @s armor.head with minecraft:emerald_block
execute as @s[tag=lab_checked_west, tag=!lab_connects_west] run execute as @e[tag=pd_west,distance=..3] run item replace entity @s armor.head with minecraft:redstone_block

execute as @s[tag=lab_checked_east, tag=lab_connects_east] run execute as @e[tag=pd_east,distance=..3] run item replace entity @s armor.head with minecraft:emerald_block
execute as @s[tag=lab_checked_east, tag=!lab_connects_east] run execute as @e[tag=pd_east,distance=..3] run item replace entity @s armor.head with minecraft:redstone_block
