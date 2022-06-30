# output
tellraw @a [{"text":"    > ", "color":"gray"}, {"text":"(5)", "color":"white"}, {"text":": clean up", "color":"gray"}]


# delete all variations (not needed any more)
kill @e[tag=pd_room_variation]
kill @e[tag=pd_border_variation]

# indicate that the wfc is finished
scoreboard players set %wfc_finished pd_level_parameters 1
