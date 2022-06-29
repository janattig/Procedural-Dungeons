# summon an armorstand if not there yet
execute unless entity @e[tag=pd_decoration, type=minecraft:armor_stand, distance=..1] run summon armor_stand ~ ~ ~ {NoGravity:1, Tags:["pd_decoration"], NoBasePlate:0, Small:0, NoHitBox:1, Marker:1b, Invisible:0}

# update the armorstand head
function pd_generation:rooms/visuals/update_armorstand_head

# maybe labyrinth
execute if score %algorithm pd_level_parameters = %ALG_1_LABYRINTH pd_level_parameters run function pd_generation:rooms/visuals/update_labyrinth_visuals
