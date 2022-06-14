# close all portals
execute as @e[tag=pd_portal] at @s run function pd_portals:remove_portal

# kill all remaining entities that are linked to portals
kill @e[tag=pd_portal]
kill @e[tag=pd_portal_decoration]

# remove the scoreboards
scoreboard objectives remove pd_portal_target_x
scoreboard objectives remove pd_portal_target_y
scoreboard objectives remove pd_portal_target_z
scoreboard objectives remove pd_portal_target_dim
scoreboard objectives remove pd_portal_coordinates
scoreboard objectives remove pd_portal_deco_rotation
scoreboard objectives remove pd_portal_deco_velocity
