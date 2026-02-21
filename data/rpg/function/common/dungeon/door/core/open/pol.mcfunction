#> rpg:common/dungeon/door/core/open/pol
#
# 
#
# @within function rpg:common/dungeon/door/open

# 見た目を移動
data modify entity @s transformation.translation set value [0.0f,0.0f,4.0f]

# アニメーション移動時間のセット
data modify entity @s interpolation_duration set value 80

# これは...なんだ？(今度書いとけ。)
data modify entity @s start_interpolation set value 0