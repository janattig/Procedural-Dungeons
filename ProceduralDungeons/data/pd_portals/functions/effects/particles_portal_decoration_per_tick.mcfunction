# normal particle effect
execute if predicate pd_portals:particle_appearing run particle minecraft:enchant ~ ~1 ~ 0.2 0.2 0.2 1 1 normal

# add flaming effect if player near
execute as @s[tag=pd_portal_active] run execute if predicate pd_portals:particle_appearing if entity @e[tag=pd_portal, tag=!pd_portal_can_teleport,distance=..1] run particle minecraft:soul_fire_flame ~ ~1 ~ 0.2 0.2 0.2 0 1 normal
execute as @s[tag=pd_portal_active] run execute if predicate pd_portals:particle_appearing if entity @e[tag=pd_portal, tag=pd_portal_can_teleport,distance=..1] run particle minecraft:flame ~ ~1 ~ 0.2 0.2 0.2 0 1 normal
