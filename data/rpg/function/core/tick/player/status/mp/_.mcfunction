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
    # 前の奴と今回の値が同じではないなら表示
    execute unless score $MPRatio RPG.Temp = @s RPG.MP_OldRaito run function rpg:core/tick/player/status/mp/bar/_