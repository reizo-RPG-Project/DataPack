#> rpg:asset/item/0009.ark_pouch/tick/used/export/foreach
#
# 
#
# @within function rpg:asset/item/0009.ark_pouch/tick/used/_

# 先頭取得
data modify storage reizo_mcfunc_engin:item 0009.private.Item set from storage reizo_mcfunc_engin:item 0009.private.data.List[0][0]

# set関係
function rpg:asset/item/0009.ark_pouch/tick/used/export/set/_

# 先頭削除
data remove storage reizo_mcfunc_engin:item 0009.private.data.List[0][0]

# 先頭が残るなら再帰
execute if data storage reizo_mcfunc_engin:item 0009.private.data.List[0][0] run function rpg:asset/item/0009.ark_pouch/tick/used/export/foreach