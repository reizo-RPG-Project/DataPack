#> rpg:asset/item/0005.abstract_food/init/_
#
# ItemのInit処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/init/run.m

# 回復量
    data modify entity @s Item.components."minecraft:lore" append value [{"text":"\uE000回復量: ",color:"white",italic:0b},{"text":"+",color:"green",italic:0b},{"text":"0",color:"green",italic:0b}]
    data modify entity @s Item.components."minecraft:lore"[-1].extra[-1].text set string storage reizo_mcfunc_engin:item Field.Recovery 0