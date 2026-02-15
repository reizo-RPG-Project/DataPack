#> rpg:asset/mob/0002.abstract_enemy/register
#
# Mobの登録処理
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/register/run.m

#> データ登録
    # 継承(オプション)
    data modify storage reizo_mcfunc_engin:mob Register.Extends append value {ID:"0001.abstract_mob",namespace:"rpg"}
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:mob Register.Final set value 0b
    # 継承されることを前提とした、抽象的なMobかどうか。
    data modify storage reizo_mcfunc_engin:mob Register.IsAbstract set value 0b
    # アイテムを落とさないか？ boolean型
    data modify storage reizo_mcfunc_engin:mob Register.DethItem_Empty set value 1b
    # 燃えるかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:mob Register.Flammable set value 0b

# フィールド
    # HP
    # data modify storage reizo_mcfunc_engin:mob Field.HP set value 100
    # STR
    # data modify storage reizo_mcfunc_engin:mob Field.HP set value 10
    # DEF
    # data modify storage reizo_mcfunc_engin:mob Field.DEF set value 50
    # 本気モード
    # data modify storage reizo_mcfunc_engin:mob Field.Seriously set value 1b