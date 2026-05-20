#> rpg:core/tick/player/status/hp/_
#
# 
#
# @within function rpg:core/tick/player/_

# HPがHPの上限値を超えてしまった場合は、HPをHPの上限値に合わせる。
execute if score @s RPG.HP >= @s RPG.HP_MAX run scoreboard players operation @s RPG.HP = @s RPG.HP_MAX

# 自然回復
execute if score @s RPG.HP < @s RPG.HP_MAX run function rpg:core/tick/player/status/hp/regen/_

# 表示用の計算
    scoreboard players operation $HP_Raito RPG.Temp = @s RPG.HP
    scoreboard players operation $HP_Raito RPG.Temp *= #40 RPG.Const
    execute if score @s RPG.HP_MAX matches ..200 run scoreboard players operation $HP_Raito RPG.Temp /= #200 RPG.Const
    execute if score @s RPG.HP_MAX matches 201.. run scoreboard players operation $HP_Raito RPG.Temp /= @s RPG.HP_MAX

# 前回のTickと結果が違うならば表示
execute unless score @s RPG.HP_OldRaito = $HP_Raito RPG.Temp run function rpg:core/tick/player/status/hp/bar/_

# 現在のRaitoをOldに入れる
scoreboard players operation @s RPG.HP_OldRaito = $HP_Raito RPG.Temp

# お掃除
    data remove storage rpg:player HPRaito
    scoreboard players reset $HP_Raito RPG.Temp