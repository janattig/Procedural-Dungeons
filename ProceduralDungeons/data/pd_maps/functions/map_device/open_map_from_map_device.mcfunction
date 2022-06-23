# tag the current map device as active
tag @e[type=minecraft:item_frame, limit=1, sort=nearest, distance=..3] add pd_active_map_device

# close all surrounding portals
execute as @e[tag=pd_active_map_device] at @s run execute as @e[tag=pd_portal, distance=..10] at @s run function pd_portals:remove_portal

# extract the information from the map
function pd_maps:map_device/extract_map_information

# wait until the level is completed
schedule function pd_maps:map_device/wait_for_level_completion 1t

# trigger the generation process
function pd_generation:generate_level
