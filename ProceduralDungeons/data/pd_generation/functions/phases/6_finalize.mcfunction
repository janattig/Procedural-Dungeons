# output
tellraw @a ["",{"text":"> "},{"text":"(6)","color":"blue"},{"text":": finalizing level"}]


# remove every level marker
kill @e[tag=pd_room]
kill @e[tag=pd_room_variation]
kill @e[tag=pd_decoration]

# level is generated now
scoreboard players set %level_fully_generated pd_generation 1
tellraw @a [{"text":"Level has been generated"}]
tellraw @a [""]
