#> rpg:asset/item/0009.ark_pouch/tick/used/_
#
# 
#
# @within function rpg:asset/item/0009.ark_pouch/tick/_

# お願いOMD!
function #oh_my_dat:please

# OMD内のデータを取り出す
data modify storage reizo_mcfunc_engin:item 0009.private.data set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RPG.Item.0009.private.data

# Init処理が完了していることが示されていないためInit処理を行う。
execute unless data storage reizo_mcfunc_engin:item 0009.private.data{Init:1b} run function rpg:asset/item/0009.ark_pouch/tick/used/init

# 音を出してみる
playsound block.chest.locked master @s ~ ~ ~ 0.5 2
playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.3 2

# Import
data modify storage reizo_mcfunc_engin:item 0009.private.data.List append from entity @s Inventory

function rpg:asset/item/0009.ark_pouch/tick/used/clear

# Export
    execute if data storage reizo_mcfunc_engin:item 0009.private.data.List[0][0] run function rpg:asset/item/0009.ark_pouch/tick/used/export/foreach
    data remove storage reizo_mcfunc_engin:item 0009.private.data.List[0]

# データをOMDに入れる
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RPG.Item.0009.private.data set from storage reizo_mcfunc_engin:item 0009.private.data

# お掃除
data remove storage reizo_mcfunc_engin:item 0009