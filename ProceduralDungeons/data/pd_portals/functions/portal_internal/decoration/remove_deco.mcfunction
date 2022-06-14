# remove the decoration of a portal
# should ideally be called as the portal (marker)
# removes decoration in a column 1x1x3 blocks centered around the call
execute positioned ~-0.5 ~-1.5 ~-0.5 run kill @e[tag=pd_portal_decoration, dx=1,dy=3,dz=1]
