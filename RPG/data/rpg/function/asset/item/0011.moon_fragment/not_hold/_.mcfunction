#> rpg:asset/item/0011.moon_fragment/not_hold/_
#
# っへ！綺麗になったぜ！
#
# @within function rpg:core/tick/player/_

# データ取得
data modify storage reizo_mcfunc_engin:item 0011.private.Gravity set from entity @s attributes[{id:"minecraft:gravity"}].base

# 重力を元に戻す
execute if data storage reizo_mcfunc_engin:item 0011.private{Gravity:0.01} run attribute @s minecraft:gravity base reset

# お掃除
data remove storage reizo_mcfunc_engin:item 0011