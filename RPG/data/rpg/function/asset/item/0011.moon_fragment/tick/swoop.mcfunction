#> rpg:asset/item/0011.moon_fragment/tick/swoop
#
# 
#
# @within function rpg:asset/item/0011.moon_fragment/tick/_

# 重力の変更
attribute @s minecraft:gravity base set 0.2

# 演出
    playsound item.trident.riptide_1 master @s ~ ~ ~ 1 1.5 1
    particle gust ~ ~ ~