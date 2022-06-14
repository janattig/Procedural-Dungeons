# update for decoration items (called as the decoration itself)

# store current rotation
execute store result score @s pd_portal_deco_rotation run data get entity @s Rotation[0] 10
# update the rotation by adding velocity
execute as @s[tag=pd_portal_deco_top] run scoreboard players operation @s pd_portal_deco_rotation += %top pd_portal_deco_velocity
execute as @s[tag=pd_portal_deco_middle] run scoreboard players operation @s pd_portal_deco_rotation += %middle pd_portal_deco_velocity
execute as @s[tag=pd_portal_deco_bottom] run scoreboard players operation @s pd_portal_deco_rotation += %bottom pd_portal_deco_velocity
# set the rotation again
execute store result entity @s Rotation[0] float 0.1 run scoreboard players get @s pd_portal_deco_rotation


# particle effect
execute at @s run function pd_portals:effects/particles_portal_decoration_per_tick
