#> rpg:asset/item/0001.abstract_item/init/_
#
# ItemのInit処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/init/run.m

# データの変更
data modify entity @s Item.components."minecraft:tooltip_display".hidden_components set value ["attribute_modifiers","unbreakable"]

# Countのセット
data modify entity @s Item.components."minecraft:max_stack_size" set from storage reizo_mcfunc_engin:item Field.Count

# ステータスによる説明文の変更
function rpg:asset/item/0001.abstract_item/init/lore/_

# レア度のセット
    # データを反映する。
    function rpg:asset/item/0001.abstract_item/init/rarity/set_data
    # 色の反映
    execute unless data storage reizo_mcfunc_engin:item Field.Rarity{Value:0} run data modify storage reizo_mcfunc_engin:item 0001.private.Init.Lore[0].color set from storage reizo_mcfunc_engin:item Field.Rarity.Color
    # [レア度]という表記
    data modify storage reizo_mcfunc_engin:item 0001.private.Init.Lore prepend value {text:"\uE002レア度: ",color:"white",italic:0b}
    # Loreの先頭に追加
    data modify entity @s Item.components."minecraft:lore" append from storage reizo_mcfunc_engin:item 0001.private.Init.Lore
    # お掃除
    data remove storage reizo_mcfunc_engin:item 0001.private.Init
    data remove storage reizo_mcfunc_engin:context Register.Lore
