# find a new unfinished room to teleport to (which is still connected)
tp @s @e[tag=pd_room, limit=1, sort=random, tag=lab_connected, tag=!lab_finished]
