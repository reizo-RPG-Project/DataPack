#> rpg:core/tick/player/status/mp/_
#
# 
#
# @within function rpg:core/tick/player/_

# 経験値バーをMP表示用とする
    # 計算
        scoreboard players operation $MPRatio RPG.Temp = @s RPG.MP
        scoreboard players operation $MPRatio RPG.Temp *= #1000 RPG.Const
        scoreboard players operation $MPRatio RPG.Temp /= @s RPG.MP_MAX
    # 操作前のレベルを一旦保存
    execute store result score $XPBarLevels RPG.Temp run scoreboard players get @s RPG.MP
    # レベル129はポイントが 0~1002 なので割合を調べるのに最適！...らしい！
    xp set @s 129 levels
    execute store result score $XPBarPoints RPG.Temp run xp query @s points
    # MPの割合(0~100%)との違いを調べる
    scoreboard players operation $XPBarDif RPG.Temp = $MPRatio RPG.Temp
    scoreboard players operation $XPBarDif RPG.Temp -= $XPBarPoints RPG.Temp
    scoreboard players operation $XPBarDif RPG.Temp /= #8 RPG.Const
    # 経験値ポイント加算
    xp set @s 0 points
    scoreboard players operation $XPBarPoints RPG.Temp += $XPBarDif RPG.Temp
    execute store result storage rpg:player XPBar.Points.Value int 1 run scoreboard players get $XPBarPoints RPG.Temp
    function rpg:core/tick/player/status/mp/set_point.m with storage rpg:player XPBar.Points
    # レベル数値加算
    xp set @s 0 levels
    execute store result storage rpg:player XPBar.Level.Value int 1 run scoreboard players get $XPBarLevels RPG.Temp
    function rpg:core/tick/player/status/mp/set_level.m with storage rpg:player XPBar.Level

# お掃除
    data remove storage rpg:player XPBar
    scoreboard players reset $MPRatio RPG.Temp
    scoreboard players reset $XPBarPoints RPG.Temp
    scoreboard players reset $XPBarLevels RPG.Temp
    scoreboard players reset $XPBarDif RPG.Temp