#> rpg:core/tick/player/status/mp/regen/_
#
# 
#
# @within function rpg:core/tick/player/status/mp/_

# Timerを上げる
scoreboard players operation @s RPG.MP_Timer += @s RPG.MP_regen

# Timerが2000になったら回復
execute if score @s RPG.MP_Timer matches 2000.. run function rpg:core/tick/player/status/mp/regen/regen