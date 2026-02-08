#> rpg:asset/item/0002.abstract_weapon/hit/_
#
# 
#
# @within function rpg:asset/item/0002.abstract_weapon/is_clicked/_

# 俺だ！
tag @s add This

# もらうダメージの計算
    execute if data storage reizo_mcfunc_engin:context data.Field.STR run function rpg:asset/item/0002.abstract_weapon/hit/dmg_dealt/str
    execute if data storage reizo_mcfunc_engin:context data.Field.INT run function rpg:asset/item/0002.abstract_weapon/hit/dmg_dealt/int

# ノックバック
    # データ取得
    execute store result score $MotionPower reizo_mcfunc_Engin.Temp run data get storage reizo_mcfunc_engin:context data.Field.KnockBack
    # タグつけ
    tag @p[tag=RPG.Attacker,tag=!reizo_mcfunc_Engin.Motion.Attacker,distance=0] add reizo_mcfunc_Engin.Motion.Attacker
    # ライブラリ使用
    execute rotated ~ ~60 run function reizo_libs:motion/knok_back

# チャージ率に応じてダメージ補正
function rpg:asset/item/0002.abstract_weapon/hit/dmg_correction/_
    # TODO:いつかprojectileもたせ！

# お掃除
tag @s remove This
scoreboard players reset $Item.0002.Hit.Weapon.Dmg