#> rpg:asset/mob/test.0001/register
#
# Mobの登録処理
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/register/run.m

#> データ登録
    # 継承(オプション)
    data modify storage reizo_mcfunc_engin:mob Register.Extends append value {ID:"0002.abstract_enemy",namespace:"rpg"}
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:mob Register.Final set value 0b
    # 継承されることを前提とした、抽象的なMobかどうか。
    data modify storage reizo_mcfunc_engin:mob Register.IsAbstract set value 0b
    # 名前 String型
    data modify storage reizo_mcfunc_engin:mob Register.Name set value "TEST"
    # 持っているアイテム String型
        # head
        data modify storage reizo_mcfunc_engin:mob Register.Head set value {id:"lether_helmet"}

# フィールド
    # HP
    data modify storage reizo_mcfunc_engin:mob Field.HP set value 100
    # STR
    data modify storage reizo_mcfunc_engin:mob Field.STR set value 10
    # DEF
    data modify storage reizo_mcfunc_engin:mob Field.DEF set value 100