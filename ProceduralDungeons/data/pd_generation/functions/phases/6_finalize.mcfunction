# output
tellraw @a ["",{"text":"> "},{"text":"(6)","color":"blue"},{"text":": finalizing level"}]


# remove every level marker
kill @e[tag=pd_room]
kill @e[tag=pd_room_variation]
kill @e[tag=pd_decoration]
