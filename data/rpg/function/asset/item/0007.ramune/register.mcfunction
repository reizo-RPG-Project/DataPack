#> rpg:asset/item/0007.ramune/register
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/register/run.m

#> 登録処理
    # 継承(オプション)
    data modify storage reizo_mcfunc_engin:item Register.Extends append value {ID:"0005.abstract_food",namespace:"rpg"}
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:item Register.Final set value 1b
    # 継承されることを前提とした、抽象的なMobかどうか。
    data modify storage reizo_mcfunc_engin:item Register.IsAbstract set value 0b
    # 名前 (TextComponentsString)
    data modify storage reizo_mcfunc_engin:item Register.Name set value {"text":"らむね"}
    # 説明文 (TextComponentsString[])
    data modify storage reizo_mcfunc_engin:item Register.Lore set value [{"text":"ひらがなです、らむねは。",color:"gray",italic:0b},{"text":"※実在の人物とは一切関係ありません。",color:"gray",italic:0b}]
    # 消費アイテム
    # ({animation: (block | bow | brush | crossbow | drink | eat | none | spear | spyglass | toot_horn),consume_seconds:(float型),has_consume_particles:(boolean型),on_consume_effects:(TextComponentsString[])})
    # data modify storage reizo_mcfunc_engin:item Register.Consumable set value {"animation":"none","consume_seconds":2147483647}
    # 動作スロット (0b..26b, mainhand, offhand, head, chest, legs, feet)
    data modify storage reizo_mcfunc_engin:item Register.Slot set value []

# フィールド
    # レア度
    data modify storage reizo_mcfunc_engin:item Field.Rarity.Value set value 1
    data modify storage reizo_mcfunc_engin:item Field.Rarity.Color set value "yellow"
    # カウント
    data modify storage reizo_mcfunc_engin:item Field.Count set value 64
    # 回復量
    data modify storage reizo_mcfunc_engin:item Field.Recovery set value 2
    # いつでも食べられるかどうか
    data modify storage reizo_mcfunc_engin:item Field.CanAlwaysEat set value 0b
    # FX
    data modify storage reizo_mcfunc_engin:item Field.FX.ID set value "0001"