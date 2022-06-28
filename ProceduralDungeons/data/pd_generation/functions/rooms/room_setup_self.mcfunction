# function to be called as a room marker to setup

# copy data from the current level
data modify entity @s data.size set from storage procedural_dungeons:current_level size

# temporarily summon an armorstand
summon armor_stand ~ ~ ~ {NoGravity:1, Tags:["pd_decoration"], NoBasePlate:0, Small:0, NoHitBox:1, Marker:1b, Invisible:0}
execute as @e[type=armor_stand,distance=..0.1] run item replace entity @s armor.head with minecraft:redstone_block
