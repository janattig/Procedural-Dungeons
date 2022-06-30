# generate a marker at the present position, indicating a border

# summon a marker indicating the border if there is no other marker in place
# does not have to be aligned with the block grid
execute unless entity @e[tag=pd_border, distance=..0.5] run summon minecraft:marker ~ ~ ~ {Tags:["pd_border"]}
