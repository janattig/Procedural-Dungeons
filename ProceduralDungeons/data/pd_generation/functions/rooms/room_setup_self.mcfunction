# function to be called as a room marker to setup

# copy data from the current level
data modify entity @s data.size set from storage procedural_dungeons:current_level size

# mark the position for reset later on
execute store result score %reset_region_size pd_dimensions run data get entity @s data.size 1
execute positioned ~ ~ ~ run function pd_dimensions:register_region_for_reset_here

# temporarily summon an armorstand
summon armor_stand ~ ~ ~ {NoGravity:1, Tags:["pd_decoration"], NoBasePlate:0, Small:0, NoHitBox:1, Marker:1b, Invisible:0}
execute as @e[type=armor_stand,distance=..0.1] run item replace entity @s armor.head with minecraft:redstone_block
