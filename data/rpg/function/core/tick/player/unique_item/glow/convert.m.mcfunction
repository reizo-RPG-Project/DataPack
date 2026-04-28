#> rpg:core/tick/player/unique_item/glow/convert.m
#
# アイテムをコンバートする
#
# @within function rpg:core/tick/player/unique_item/glow/_

# すでにあるアイテムがRME製なら動作終了
    $execute if items entity @s weapon.mainhand $(mc_id) if data entity @s SelectedItem.components."minecraft:custom_data".Item run return 0
    $execute if items entity @s weapon.offhand $(mc_id) if data entity @s equipment.offhand.components."minecraft:custom_data".Item run return 0

# boxにアイテムを設置
$function reizo_mcfunc_engin:api/item/box.m {ID:"$(ID)",namespace:"rpg"}

# Countをコピー
    $execute if items entity @s weapon.mainhand $(mc_id) run data modify block 10000 0 10000 Items[0].count set from entity @s SelectedItem.count
    $execute if items entity @s weapon.offhand $(mc_id) run data modify block 10000 0 10000 Items[0].count set from entity @s equipment.offhand.count

# 手の位置に移動
    $execute if items entity @s weapon.mainhand $(mc_id) run item replace entity @s weapon.mainhand from block 10000 0 10000 container.0
    $execute if items entity @s weapon.offhand $(mc_id) run item replace entity @s weapon.mainhand from block 10000 0 10000 container.0