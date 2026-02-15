#> rpg:core/tick/player/status/hp/regen/_
#
# 
#
# @within function rpg:core/tick/player/status/hp/_

# Timerを上げる
scoreboard players operation @s RPG.HP_Timer += @s RPG.HP_regen

# Timerが2000になったら回復
execute if score @s RPG.HP_Timer matches 2000.. run function rpg:core/tick/player/status/hp/regen/regen