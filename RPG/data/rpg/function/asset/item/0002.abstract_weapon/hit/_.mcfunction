#> rpg:asset/item/0002.abstract_weapon/hit/_
#
# 
#
# @within function rpg:asset/item/0002.abstract_weapon/is_clicked/_

# 俺だ！
tag @s add This

# IDで繋げる
scoreboard players operation @s reizo_mcfunc_Engin.ScoreID = @p[tag=RPG.Attacker] reizo_mcfunc_Engin.ScoreID

# もらうダメージの計算
    execute if data storage reizo_mcfunc_engin:context data.Field.STR run function rpg:asset/item/0002.abstract_weapon/hit/dmg_dealt/str
    # TODO:魔法攻撃力も足しとけ。

# チャージ率に応じてダメージ補正
execute as @p[tag=RPG.Attacker] run function rpg:asset/item/0002.abstract_weapon/hit/dmg_correction/_
    # TODO:いつかprojectileもたせ！

# お掃除
tag @s remove This