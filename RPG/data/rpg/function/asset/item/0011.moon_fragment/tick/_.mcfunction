#> rpg:asset/0011.moon_fragment/tick/_
#
# ItemのTick処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run.m

# 落下耐性
# TODO:もしかしたら落下耐性をスコアで扱う可能性があるため...気を付けろよ？
attribute @s minecraft:safe_fall_distance base set 7

# 空中でしゃがむと急降下だぜ！
execute if score @s[tag=!reizo_mcfunc_Engin.Is_on_Ground] reizo_mcfunc_Engin.Sneaking matches 1 run return run function rpg:asset/item/0011.moon_fragment/tick/swoop

# 重力を1/6(0.01)に
attribute @s[tag=reizo_mcfunc_Engin.Is_on_Ground] minecraft:gravity base set 0.01