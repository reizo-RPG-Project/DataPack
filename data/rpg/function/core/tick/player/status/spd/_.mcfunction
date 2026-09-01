#> rpg:core/tick/player/status/spd/_
#
# 
#
# @within function rpg:core/tick/player/_

# 取得
scoreboard players operation $Player.Status.SPD RPG.Temp = @s RPG.SPD

# 計算して適応
    scoreboard players operation $Player.Status.SPD RPG.Temp *= #2 RPG.Const
    execute store result storage rpg:player SPD.value double 0.001 run scoreboard players get $Player.Status.SPD RPG.Temp
    function rpg:core/tick/player/status/spd/set.m with storage rpg:player SPD

# お掃除
    data remove storage rpg:player SPD
    scoreboard players reset $Player.Status.SPD RPG.Temp