#> rpg:core/tick/player/on_death/_
#
# 
#
# @within function rpg:core/tick/player/_

# リスポーン
execute in overworld run tp 3.5 20.0 -17.5

# 目の前真っ暗
    effect give @s darkness 3 0 true
    effect give @s blindness 3 0 true

# 復活
    effect give @s saturation 1 20
    scoreboard players operation @s RPG.HP = @s RPG.HP_MAX
    # scoreboard players operation @s MP = @s MPMax

# お掃除
tag @s remove RPG.Death