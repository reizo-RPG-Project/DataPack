#> rpg:asset/0011.moon_fragment/tick/_
#
# ItemのTick処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run.m

# お願いOMD!
function #oh_my_dat:please

# データ取得
data modify storage reizo_mcfunc_engin:item 0011 set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RPG.Item.0011

# 二つのデータを1bに
data modify storage reizo_mcfunc_engin:item 0011.public.Holding set value 1b
data modify storage reizo_mcfunc_engin:item 0011.public.Holded set value 1b

# 重力を1/6(0.01)に
attribute @s gravity base set 0.01

# OMDに戻す
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RPG.Item.0011 set from storage reizo_mcfunc_engin:item 0011

# お掃除
data remove storage reizo_mcfunc_engin:item 0011