#> rpg:asset/mob/0002.abstract_enemy/init/seriously
#
# 
#
# @within function rpg:asset/mob/0002.abstract_enemy/init/_

# 本気モードの計算
    scoreboard players operation @s RPG.Mob.0002.SeriouslyValue = @s RPG.HP
    scoreboard players operation @s RPG.Mob.0002.SeriouslyValue /= #3 RPG.Const