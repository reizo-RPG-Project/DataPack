#> rpg:asset/0009.ark_pouch/tick/_
#
# ItemのTick処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run.m

# 使ったな！
execute unless data entity @s SelectedItem.components{"minecraft:custom_data":{Item:{}},"minecraft:consumable":{}} if score @s reizo_mcfunc_Engin.using_Item matches 1 run function rpg:asset/item/0009.ark_pouch/tick/used/_