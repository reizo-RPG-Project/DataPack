#> rpg:asset/item/0003.abstract_sword/rec/_
#
# 
#
# @within function rpg:asset/item/0002.abstract_weapon/is_clicked/_

# 当たり判定タグつけ
execute positioned ~-0.25 ~-0.25 ~-0.25 as @e[tag=reizo_mcfunc_Engin.Mob,tag=RPG.Mob.0001.Enemy,dx=0,type=!player] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] run tag @s add RPG.Mob.0001.Hit

# リーチの限界まで再帰
    execute positioned ^ ^ ^0.5 if entity @s[distance=..3.5] if block ~ ~ ~ #reizo_mcfunc_engin:no_col run function rpg:asset/item/0003.abstract_sword/rec/_
    execute positioned ^ ^ ^0.5 if entity @s[distance=..3.5] run function rpg:asset/item/0003.abstract_sword/rec/_