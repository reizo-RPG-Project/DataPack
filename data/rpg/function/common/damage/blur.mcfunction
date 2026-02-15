#> rpg:common/damage/blur
#
# ダメージのブレ
#
# @public

# ダメージブレ幅の決定(30ダメージごとにブレ幅+1)
    scoreboard players operation $Common.Damage.Blur RPG.Temp = @s RPG.DMG
    scoreboard players add $Common.Damage.Blur RPG.Temp 25
    scoreboard players operation $Common.Damage.Blur RPG.Temp /= #30 RPG.Const
    scoreboard players operation $Common.Damage.Blur RPG.Temp *= #2 RPG.Const
    scoreboard players add $Common.Damage.Blur RPG.Temp 1

# 0~2*floor((Dmg+25)/30)+1の乱数を生成
    execute store result score $Common.Damage.Blur.Random RPG.Temp run random value 0..65534
    scoreboard players operation $Common.Damage.Blur.Random RPG.Temp %= $Common.Damage.Blur RPG.Temp

# －と＋側にダメージブレを生成
    scoreboard players remove $Common.Damage.Blur RPG.Temp 1
    scoreboard players operation $Common.Damage.Blur RPG.Temp /= #2 RPG.Const
    scoreboard players operation $Common.Damage.Blur.Random RPG.Temp -= $Common.Damage.Blur RPG.Temp
    execute if score @s RPG.DMG matches 1.. run scoreboard players operation @s RPG.DMG += $Common.Damage.Blur.Random RPG.Temp

# お掃除
    scoreboard players reset $Common.Damage.Blur RPG.Temp
    scoreboard players reset $Common.Damage.Blur.Random RPG.Temp