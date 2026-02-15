#> rpg:asset/item/0018.soul_lantern/register
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
    data modify storage reizo_mcfunc_engin:item Register.Name set value [{"text":"ﾀﾏｼｲ",bold:1b},{"text":"の",bold:0b},{"text":"ﾗﾝ･ﾀｧﾝ",bold:1b}]
    # 説明文 (TextComponentsString[])
    data modify storage reizo_mcfunc_engin:item Register.Lore set value [{"text":"ﾗﾝ･ﾀｧﾝのﾀﾏｼｲの込められたランタン",color:"gray",italic:0b},{"text":"一度だけ死を無効可できる。",color:"gray",italic:0b}]
    # アイテムを持っていない場合でも動作させるかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:item Register.NotHold set value 1b

# フィールド
    # レア度
    data modify storage reizo_mcfunc_engin:item Field.Rarity.Value set value 1
    data modify storage reizo_mcfunc_engin:item Field.Rarity.Color set value "#FC0066"