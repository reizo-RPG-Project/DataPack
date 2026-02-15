#> rpg:asset/mob/0004.thief/register
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
    data modify storage reizo_mcfunc_engin:mob Register.Name set value "盗賊"
    # アイテムを落とさないか？ boolean型
    data modify storage reizo_mcfunc_engin:mob Register.DethItem_Empty set value 1b
    # 持っているアイテム String型
        # head
        data modify storage reizo_mcfunc_engin:mob Register.main_hand set value {id:"iron_axe"}

# フィールド
    # HP
    data modify storage reizo_mcfunc_engin:mob Field.HP set value 150
    # STR
    data modify storage reizo_mcfunc_engin:mob Field.STR set value 24
    # DEF
    data modify storage reizo_mcfunc_engin:mob Field.DEF set value 100
    # 本気モード
    data modify storage reizo_mcfunc_engin:mob Field.Seriously set value 1b