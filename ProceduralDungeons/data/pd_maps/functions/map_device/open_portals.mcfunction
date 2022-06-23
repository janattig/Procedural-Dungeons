# summon the two target markers and move them to the target position and the map device position
execute in overworld run summon minecraft:marker 0 10 0 {Tags:["pd_tmp_map_portal_marker_1"]}
execute as @e[tag=pd_tmp_map_portal_marker_1] at @s run function pd_dimensions:tp_self_to_target_dimension
data modify entity @e[tag=pd_tmp_map_portal_marker_1,limit=1] Pos set from storage procedural_dungeons:current_map portal_target
execute in overworld run summon minecraft:marker 0 10 0 {Tags:["pd_tmp_map_portal_marker_2"]}
execute as @e[tag=pd_tmp_map_portal_marker_2] at @s run tp @s @e[tag=pd_active_map_device, limit=1]
execute as @e[tag=pd_tmp_map_portal_marker_2] at @s run tp @s ~ ~0.5 ~

# build the portal that links back to the map device
execute as @e[tag=pd_tmp_map_portal_marker_2] at @s run function pd_portals:set_portal_target_here
execute as @e[tag=pd_tmp_map_portal_marker_1] at @s run function pd_portals:summon_portal

# build the portal ring that links to the map
execute as @e[tag=pd_tmp_map_portal_marker_1] at @s run function pd_portals:set_portal_target_here
execute as @e[tag=pd_active_map_device] at @s run execute positioned ~4 ~-1 ~ run function pd_portals:summon_portal
execute as @e[tag=pd_active_map_device] at @s run execute positioned ~ ~-1 ~4 run function pd_portals:summon_portal
execute as @e[tag=pd_active_map_device] at @s run execute positioned ~-4 ~-1 ~ run function pd_portals:summon_portal
execute as @e[tag=pd_active_map_device] at @s run execute positioned ~ ~-1 ~-4 run function pd_portals:summon_portal
execute as @e[tag=pd_active_map_device] at @s run execute positioned ~3 ~-1 ~3 run function pd_portals:summon_portal
execute as @e[tag=pd_active_map_device] at @s run execute positioned ~3 ~-1 ~-3 run function pd_portals:summon_portal
execute as @e[tag=pd_active_map_device] at @s run execute positioned ~-3 ~-1 ~3 run function pd_portals:summon_portal
execute as @e[tag=pd_active_map_device] at @s run execute positioned ~-3 ~-1 ~-3 run function pd_portals:summon_portal


# kill the temporary markers
kill @e[tag=pd_tmp_map_portal_marker_1]
kill @e[tag=pd_tmp_map_portal_marker_2]

# set the map device as not active
tag @e[tag=pd_active_map_device] remove pd_active_map_device
