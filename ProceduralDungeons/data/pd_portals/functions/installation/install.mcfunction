# add scoreboards for coordinates
# these are ONLY used by portals to save their destinations
scoreboard objectives add pd_portal_target_x dummy
scoreboard objectives add pd_portal_target_y dummy
scoreboard objectives add pd_portal_target_z dummy
scoreboard objectives add pd_portal_target_dim dummy

# public scoreboard for passing the destination when opening a new portal
scoreboard objectives add pd_portal_coordinates dummy

# reset the destination (this is what needs to be set in order for a portal to operate properly)
scoreboard players set %target_x pd_portal_coordinates 0
scoreboard players set %target_y pd_portal_coordinates 1000
scoreboard players set %target_z pd_portal_coordinates 0
scoreboard players set %target_dim pd_portal_coordinates 1




# scoreboards used for decoration
scoreboard objectives add pd_portal_deco_rotation dummy
scoreboard objectives add pd_portal_deco_velocity dummy

# set some default values for velocity
scoreboard players set %top pd_portal_deco_velocity 25
scoreboard players set %middle pd_portal_deco_velocity -20
scoreboard players set %bottom pd_portal_deco_velocity 11
