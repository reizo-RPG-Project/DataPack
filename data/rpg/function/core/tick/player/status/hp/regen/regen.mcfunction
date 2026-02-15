#> rpg:core/tick/player/status/hp/regen/regen
#
# 
#
# @within function rpg:core/tick/player/status/hp/regen/_

# HPの回復
    scoreboard players operation $Player.Status.HP.regen RPG.Temp = @s RPG.HP_Timer
    scoreboard players operation $Player.Status.HP.regen RPG.Temp /= #2000 RPG.Const
    scoreboard players operation @s RPG.HP += $Player.Status.HP.regen RPG.Temp

# タイマーの減算
    scoreboard players operation $Player.Status.HP.regen RPG.Temp *= #2000 RPG.Const
    scoreboard players operation @s RPG.HP_Timer -= $Player.Status.HP.regen RPG.Temp

# リセット
scoreboard players reset $Player.Status.HP.regen RPG.Temp