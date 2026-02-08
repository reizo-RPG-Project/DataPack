#> rpg:asset/item/0020.abstract_wand/register
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/register/run.m

#> 登録処理
    # 継承(オプション)
    data modify storage reizo_mcfunc_engin:item Register.Extends append value {ID:"0002.abstract_weapon",namespace:"rpg"}
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:item Register.Final set value 0b
    # 継承されることを前提とした、抽象的なMobかどうか。
    data modify storage reizo_mcfunc_engin:item Register.IsAbstract set value 1b

# フィールド
    # 魔法攻撃力
    # data modify storage reizo_mcfunc_engin:item Field.INT set value 1
    # Abstract系統
        # ノックバック力
        data modify storage reizo_mcfunc_engin:item Field.KnockBack set value 0