# forceload the origin
forceload add ~ ~
# forceload the level region (around the origin)
forceload add ~-50 ~-50 ~50 ~50
# forceload the reset region (far outside origin)
execute positioned 12300000 0 12300000 run forceload add ~ ~ ~19 ~19
