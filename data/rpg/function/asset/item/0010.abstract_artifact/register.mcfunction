#> rpg:asset/item/0010.abstract_artifact/register
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/register/run.m

#> 登録処理
    # 継承(オプション)
    data modify storage reizo_mcfunc_engin:item Register.Extends append value {ID:"0001.abstract_item",namespace:"rpg"}
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:item Register.Final set value 0b
    # 継承されることを前提とした、抽象的なMobかどうか。
    data modify storage reizo_mcfunc_engin:item Register.IsAbstract set value 1b
    # 動作スロット (0b..26b, mainhand, offhand, head, chest, legs, feet)
    data modify storage reizo_mcfunc_engin:item Register.Slot set value [9b, 10b, 11b]

# フィールド
    # レア度
    # data modify storage reizo_mcfunc_engin:item Field.Rarity.Value set value 1
    # data modify storage reizo_mcfunc_engin:item Field.Rarity.Color set value "yellow"