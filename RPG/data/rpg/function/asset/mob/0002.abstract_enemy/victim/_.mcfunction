#> rpg:asset/mob/0002.abstract_enemy/victim/_
#
# 
#
# @within function rpg:asset/mob/0002.abstract_enemy/attack/_

# 俺だ！
tag @s add This

# もらうダメージの計算
    execute if data storage reizo_mcfunc_engin:context data.Field.STR run function rpg:asset/mob/0002.abstract_enemy/victim/dmg_delt/str
    # TODO:魔法攻撃力も足しとけ。

# ダメージ反映
execute as @p[distance=0] at @s run function rpg:core/tick/player/on_hurt/_

# お掃除
tag @s remove This
tag @s remove RPG.Victim