#> rpg:asset/item/0009.ark_pouch/tick/used/init
#
# 
#
# @within function rpg:asset/item/0009.ark_pouch/tick/used/_

# 配列を作成
    data modify storage reizo_mcfunc_engin:item 0009.private.data.List append value []
    data modify storage reizo_mcfunc_engin:item 0009.private.data.List append value []

# Init処理をしたことを示す
data modify storage reizo_mcfunc_engin:item 0009.private.data.Init set value 1b