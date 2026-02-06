#> rpg:core/tick/player/status/hp/_
#
# 
#
# @within function rpg:core/tick/player/_

# HPがHPの上限値を超えてしまった場合は、HPをHPの上限値に合わせる。
execute if score @s RPG.HP >= @s RPG.HP_MAX run scoreboard players operation @s RPG.HP = @s RPG.HP_MAX

# 自然回復
execute if score @s RPG.HP < @s RPG.HP_MAX run function rpg:core/tick/player/status/hp/regen/_