#> rpg:asset/item/0023.leather_boots/give/_
#
# Itemの取得処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/run.m

# 元となるアイテムを召喚
summon item ~ ~ ~ {Item:{id:"leather_boots"},Tags:["reizo_mcfunc_Engin.Item.Init","reizo_mcfunc_Engin.Item"]}