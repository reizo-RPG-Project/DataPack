#> rpg:asset/item/0001.abstract_item/init/lore/int
#
# 
#
# @within function rpg:asset/item/0001.abstract_item/init/lore/_

# 魔法攻撃力
    data modify entity @s Item.components."minecraft:lore" append value [{text:"\uE004魔法攻撃力: ",color:"white",italic:0b},{"text":"+",color:"green",italic:0b},{"text":"0",color:"green",italic:0b}]
    data modify entity @s Item.components."minecraft:lore"[-1].extra[-1].text set string storage reizo_mcfunc_engin:item Field.INT 0
    execute store result score $Item.0001.Init.Lore.Value RPG.Temp run data get storage reizo_mcfunc_engin:item Field.INT
    execute if score $Item.0001.Init.Lore.Value RPG.Temp matches ..-1 run function rpg:asset/item/0001.abstract_item/init/lore/_common/negative