# summon decoration blocks (on top of invisble armor stands)

# top block
execute positioned ~ ~0.6 ~ run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1, Tags:["pd_portal_decoration"], NoBasePlate:1, Small:1, Invisible:1b, NoHitBox:0, Marker:1b,ArmorItems:[{},{},{}, {id:"minecraft:diamond_block",Count:1b}]}
execute positioned ~ ~0.6 ~ run tag @e[tag=pd_portal_decoration, limit=1, sort=nearest] add pd_portal_deco_top

# middle block
execute positioned ~ ~0.1 ~ run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1, Tags:["pd_portal_decoration"], NoBasePlate:1, Small:1, Invisible:1b, NoHitBox:0, Marker:1b,ArmorItems:[{},{},{}, {id:"minecraft:sea_lantern",Count:1b}]}
execute positioned ~ ~0.1 ~ run tag @e[tag=pd_portal_decoration, limit=1, sort=nearest] add pd_portal_deco_middle

# bottom block
execute positioned ~ ~-0.4 ~ run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1, Tags:["pd_portal_decoration"], NoBasePlate:1, Small:1, Invisible:1b, NoHitBox:0, Marker:1b,ArmorItems:[{},{},{}, {id:"minecraft:diamond_block",Count:1b}]}
execute positioned ~ ~-0.4 ~ run tag @e[tag=pd_portal_decoration, limit=1, sort=nearest] add pd_portal_deco_bottom
