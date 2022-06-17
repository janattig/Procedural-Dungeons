# function to summon a new room marker when generating a level

# summon a new marker at the current position
summon minecraft:marker ~ ~ ~ {Tags:["pd_room"]}
# let the entity run the setup function
execute as @e[tag=pd_room, sort=nearest, limit=1] at @s run function pd_generation:rooms/room_setup_self
