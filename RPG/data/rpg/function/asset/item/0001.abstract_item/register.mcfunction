#> rpg:asset/item/0001.abstract_item/register
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/register/run.m

#> 登録処理
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:item Register.Final set value 0b
    # 継承されることを前提とした、抽象的なMobかどうか。
    data modify storage reizo_mcfunc_engin:item Register.IsAbstract set value 1b
    # 名前 (TextComponentsString)
    data modify storage reizo_mcfunc_engin:item Register.Name set value {"text":"このメッセージはでないはずだよ"}
    # 説明文 (TextComponentsString[])
    data modify storage reizo_mcfunc_engin:item Register.Lore set value [{"text":"このメッセージはでないはずだよ"}]

# フィールド
    # レア度
    # data modify storage reizo_mcfunc_engin:item Field.Rarity.Value set value 0
    # data modify storage reizo_mcfunc_engin:item Field.Rarity.Color set value "yellow"
    # カウント
    execute unless data storage reizo_mcfunc_engin:item Field.Count run data modify storage reizo_mcfunc_engin:item Field.Count set value 1