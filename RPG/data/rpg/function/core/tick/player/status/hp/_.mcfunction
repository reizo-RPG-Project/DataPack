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
    scoreboard players operation $Player.Status.HP.Raito RPG.Temp = @s RPG.HP
    scoreboard players operation $Player.Status.HP.Raito RPG.Temp *= #40 RPG.Const
    execute if score @s RPG.HP_MAX matches ..200 run scoreboard players operation $Player.Status.HP.Raito RPG.Temp /= #200 RPG.Const
    execute if score @s RPG.HP_MAX matches 201.. run scoreboard players operation $Player.Status.HP.Raito RPG.Temp /= @s RPG.HP_MAX

# 適用
    execute store result storage rpg:player HPRaito.Value int 1 run scoreboard players get $Player.Status.HP.Raito RPG.Temp
    function rpg:core/tick/player/status/hp/bar.m with storage rpg:player HPRaito
    effect give @s health_boost infinite 0 true
    effect clear @s health_boost