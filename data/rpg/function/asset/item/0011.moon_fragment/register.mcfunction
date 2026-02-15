#> rpg:asset/item/0011.moon_fragment/register
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/register/run.m

#> 登録処理
    # 継承(オプション)
    data modify storage reizo_mcfunc_engin:item Register.Extends append value {ID:"0010.abstract_artifact",namespace:"rpg"}
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:item Register.Final set value 1b
    # 継承されることを前提とした、抽象的なMobかどうか。
    data modify storage reizo_mcfunc_engin:item Register.IsAbstract set value 0b
    # 名前 (TextComponentsString)
    data modify storage reizo_mcfunc_engin:item Register.Name set value [{"text":"月",bold:1b},{"text":"の",bold:0b},{"text":"ｶｹﾗ",bold:1b}]
    # 説明文 (TextComponentsString[])
    data modify storage reizo_mcfunc_engin:item Register.Lore set value [{"text":"月の重力がこめられた不思議なカケラ",color:"gray",italic:0b},{"text":"落下ダメージにご注意を...",color:"gray",italic:0b}]
    # アイテムを持っていない場合でも動作させるかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:item Register.NotHold set value 1b

# フィールド
    # レア度
    data modify storage reizo_mcfunc_engin:item Field.Rarity.Value set value 4
    data modify storage reizo_mcfunc_engin:item Field.Rarity.Color set value "yellow"