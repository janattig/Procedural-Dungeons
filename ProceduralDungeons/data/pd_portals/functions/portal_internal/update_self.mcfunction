# run as the portal marker itself to check activity in every tick

# check if the portal is activated (player nearby)
execute if entity @p[distance=..3] run tag @s add pd_portal_active
execute unless entity @p[distance=..3] run tag @s remove pd_portal_active

# as active / inactive portal, activate / deactivate decorationss
execute as @s[tag=pd_portal_active] at @s run execute positioned ~-0.5 ~-1.5 ~-0.5 run execute as @e[tag=pd_portal_decoration, dx=1,dy=3,dz=1] at @s run tag @s add pd_portal_active
execute as @s[tag=!pd_portal_active] at @s run execute positioned ~-0.5 ~-1.5 ~-0.5 run execute as @e[tag=pd_portal_decoration, dx=1,dy=3,dz=1] at @s run tag @s remove pd_portal_active

# as active: check if player teleportable
execute as @s[tag=pd_portal_active] at @s run execute if entity @p[distance=..0.7,tag=!pd_portal_recent_tp,tag=!pd_portal_prevent_tp] run tag @s add pd_portal_can_teleport
execute as @e[tag=pd_portal_active] at @s run execute unless entity @p[distance=..0.7,tag=!pdp_recent_teleport,tag=!pd_portal_prevent_tp] run tag @s remove pd_portal_can_teleport
