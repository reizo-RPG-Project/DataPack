#> rpg:core/tick/player/status/mp/_
#
# 
#
# @within function rpg:core/tick/player/_

# MPがMPの上限値を超えてしまった場合は、HPをHPの上限値に合わせる。
execute if score @s RPG.MP >= @s RPG.MP_MAX run scoreboard players operation @s RPG.MP = @s RPG.MP_MAX

# 自然回復
execute if score @s RPG.MP < @s RPG.MP_MAX run function rpg:core/tick/player/status/mp/regen/_

# 経験値バーをMP表示用とする
    # 計算
        scoreboard players operation $MPRatio RPG.Temp = @s RPG.MP
        scoreboard players operation $MPRatio RPG.Temp *= #1000 RPG.Const
        scoreboard players operation $MPRatio RPG.Temp /= @s RPG.MP_MAX
    # 前の奴と今回の値が同じではないなら表示
    execute unless score $MPRatio RPG.Temp = @s RPG.MP_OldRaito run function rpg:core/tick/player/status/mp/bar/_
    # しかし、見えているレベルがMP_MAXより大きければ再表示
        # レベル取得
        execute store result score $Level RPG.Temp run xp query @s levels
        # 不一致なら再表示
        execute if score @s RPG.MP_MAX < $Level RPG.Temp run function rpg:core/tick/player/status/mp/bar/_
        # お掃除
        scoreboard players reset $Level RPG.Temp