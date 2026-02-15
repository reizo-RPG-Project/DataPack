#> rpg:core/tick/player/get_data/_
#
# 
#
# @within function rpg:core/tick/player/_

# FallDistance
execute unless data entity @s {fall_distance:0.0d} store result score @s RPG.FallDistance run data get entity @s fall_distance