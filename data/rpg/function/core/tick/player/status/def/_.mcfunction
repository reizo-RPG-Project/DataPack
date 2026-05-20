#> rpg:core/tick/player/status/def/_
#
# 
#
# @within function rpg:core/tick/player/_

# 現在のDEFが前TickのDEFと同じではないのなら割合を表示
execute unless score @s RPG.DEF_Old = @s RPG.DEF run function rpg:core/tick/player/status/def/bar/_