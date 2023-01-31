# let the marker entity run the load function
execute as @e[tag=pd_current, tag=pd_display, sort=nearest, limit=1] at @s run function pd_room_display:rooms/load_room_from_marker
execute as @e[tag=pd_current, tag=pd_display, sort=nearest, limit=1] at @s run function pd_room_display:rooms/load_frame_from_marker

# setup the room to be reset (utilizing the region reset from pd_dimension)
execute as @e[tag=pd_current, tag=pd_display, sort=nearest, limit=1] at @s run function pd_room_display:rooms/setup_room_reset

# kill the marker
kill @e[tag=pd_current, tag=pd_display]