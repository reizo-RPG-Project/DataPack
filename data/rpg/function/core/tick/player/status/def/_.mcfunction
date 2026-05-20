#> rpg:core/tick/player/status/def/_
#
# 
#
# @within function rpg:core/tick/player/_

# 表示用の計算
    scoreboard players operation $DEF RPG.Temp = @s RPG.DEF
    scoreboard players operation $DEF RPG.Temp -= @s RPG.OriginDEF
    scoreboard players operation $DEF RPG.Temp *= #40 RPG.Const
    scoreboard players operation $DEF RPG.Temp /= #200 RPG.Const
    execute store result storage rpg:player DEFRaito.Value int 1 run scoreboard players get $DEF RPG.Temp

# 表示
function rpg:core/tick/player/status/def/bar.m with storage rpg:player DEFRaito

# お掃除
    scoreboard players reset $DEF RPG.Temp
    data remove storage rpg:player DEFRaito