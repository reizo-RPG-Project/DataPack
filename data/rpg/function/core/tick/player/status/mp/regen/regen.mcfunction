#> rpg:core/tick/player/status/mp/regen/regen
#
# 
#
# @within function rpg:core/tick/player/status/mp/regen/_

# MPの回復
    scoreboard players operation $MP.regen RPG.Temp = @s RPG.MP_Timer
    scoreboard players operation $MP.regen RPG.Temp /= #2000 RPG.Const
    scoreboard players operation @s RPG.MP += $MP.regen RPG.Temp

# タイマーの減算
    scoreboard players operation $MP.regen RPG.Temp *= #2000 RPG.Const
    scoreboard players operation @s RPG.MP_Timer -= $MP.regen RPG.Temp

# リセット
scoreboard players reset $MP.regen RPG.Temp