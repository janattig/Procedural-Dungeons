# choose one of the room variations (random / maybe excluding double choosings)
tag @e[tag=pd_room_variation, distance=..1, limit=1, sort=random] add pd_chosen

# kill all non-chosen markers
kill @e[tag=pd_room_variation, distance=..1, tag=!pd_chosen]
