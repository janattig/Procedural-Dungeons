# kill all previous cursors
kill @e[tag=lab_cursor]
# summon a new marker at the current position
execute at @e[tag=pd_room, tag=lab_connected] run summon minecraft:marker ~ ~ ~ {Tags:["lab_cursor"]}
