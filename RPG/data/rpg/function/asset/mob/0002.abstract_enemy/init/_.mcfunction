#> rpg/asset/mob/0002.abstract_enemy/init
#
# MobのInit処理
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/init/run.m

# タグをつける
    tag @s add RPG.Mob.0001.Enemy

# ステータスセット
    execute store result score @s RPG.HP run data get storage reizo_mcfunc_engin:mob Field.HP
    execute store result score @s RPG.STR run data get storage reizo_mcfunc_engin:mob Field.STR
    execute store result score @s RPG.DEF run data get storage reizo_mcfunc_engin:mob Field.DEF

# 自然的な要因で死なないように
    effect give @s regeneration infinite 255 true
    effect give @s[type=#undead] instant_damage infinite 0 true

# 本気モード
execute if data storage reizo_mcfunc_engin:mob Field{Seriously:1b} run function rpg:asset/mob/0002.abstract_enemy/init/seriously