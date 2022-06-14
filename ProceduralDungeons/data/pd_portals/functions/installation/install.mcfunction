# add scoreboards for coordinates
# these are ONLY used by portals to save their destinations
scoreboard objectives add pd_portal_target_x dummy
scoreboard objectives add pd_portal_target_y dummy
scoreboard objectives add pd_portal_target_z dummy
scoreboard objectives add pd_portal_target_dim dummy

# public scoreboard for passing the destination when opening a new portal
scoreboard objectives add pd_portal_coordinates dummy

# reset the destination (this is what needs to be set in order for a portal to operate properly)
scoreboard players reset %target_x pd_portal_coordinates
scoreboard players reset %target_y pd_portal_coordinates
scoreboard players reset %target_z pd_portal_coordinates
scoreboard players reset %target_dim pd_portal_coordinates
