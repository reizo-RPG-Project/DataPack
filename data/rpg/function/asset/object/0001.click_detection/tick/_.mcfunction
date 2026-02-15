#> rpg/asset/object/0001.click_detection/tick/_
#
# Objectの常時Tick処理
#
# @within function reizo_mcfunc_engin:asset/object/.manager/tick/run.m

# スコアアップ
scoreboard players add @s reizo_mcfunc_Engin.KiiTimer 1

# 2にならないとここは動かない
    execute unless score @s reizo_mcfunc_Engin.KiiTimer matches 2 run return fail
    tp @s ~ ~-1000 ~
    kill @s