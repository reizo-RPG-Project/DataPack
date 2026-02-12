#> rpg:asset/item/0008.edamame_sword/register
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/register/run.m

#> 登録処理
    # 継承(オプション)
    data modify storage reizo_mcfunc_engin:item Register.Extends append value {ID:"0003.abstract_sword",namespace:"rpg"}
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:item Register.Final set value 1b
    # 継承されることを前提とした、抽象的なMobかどうか。
    data modify storage reizo_mcfunc_engin:item Register.IsAbstract set value 0b
    # 名前 (TextComponentsString)
    data modify storage reizo_mcfunc_engin:item Register.Name set value [{"text":"聖剣･",bold:0b},{"text":"ｴﾀﾞﾏﾒ",bold:1b},{"text":"リア",bold:0b}]
    # 説明文 (TextComponentsString[])
    data modify storage reizo_mcfunc_engin:item Register.Lore set value [{"text":"闇銀河戦士との戦いで、",color:"gray",italic:0b},{"text":"古代の勇者が使ったとされる剣。",color:"gray",italic:0b},{"text":"※実在の人物とは一切関係ありません。",color:"gray",italic:0b}]

# フィールド
    # レア度
    data modify storage reizo_mcfunc_engin:item Field.Rarity.Value set value 5
    data modify storage reizo_mcfunc_engin:item Field.Rarity.Color set value "yellow"
    # FX
    data modify storage reizo_mcfunc_engin:item Field.FX.ID set value "0001"
    # 物理攻撃力
    data modify storage reizo_mcfunc_engin:item Field.STR set value 35
    # 攻撃速度
    data modify storage reizo_mcfunc_engin:item Field.AttackSpeed set value -3