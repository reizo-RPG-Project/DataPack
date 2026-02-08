#> rpg:asset/mob/0002.abstract_enemy/victim/_
#
# 敵(@s)からプレイヤー(@p)への攻撃時のプレイヤーの動作
#
# @within function rpg:asset/mob/0002.abstract_enemy/attack/_

# 俺だ！
tag @p[distance=0] add This

# もらうダメージの計算
    execute if data storage reizo_mcfunc_engin:context data.Field.STR run function rpg:asset/mob/0002.abstract_enemy/victim/dmg_delt/str
    # TODO:魔法攻撃力も足しとけ。

# ダメージ反映
execute as @p[distance=0] at @s run function rpg:core/tick/player/on_hurt/_

# お掃除
tag @p[distance=0] remove This
tag @p[distance=0] remove RPG.Victim