#> rpg:asset/item/0001.abstract_item/init/rarity/set_data
#
# 
#
# @within function rpg:asset/item/0001.abstract_item/init/_

# データの反映
    execute if data storage reizo_mcfunc_engin:item Field.Rarity{Value:0} run return run data modify storage reizo_mcfunc_engin:item 0001.private.Init.Lore set value [{text:"★★★★★",color:"gray"}]
    execute if data storage reizo_mcfunc_engin:item Field.Rarity{Value:1} run return run data modify storage reizo_mcfunc_engin:item 0001.private.Init.Lore set value [{text:"★",color:"white"},{text:"★★★★",color:"gray"}]
    execute if data storage reizo_mcfunc_engin:item Field.Rarity{Value:2} run return run data modify storage reizo_mcfunc_engin:item 0001.private.Init.Lore set value [{text:"★★",color:"white"},{text:"★★★",color:"gray"}]
    execute if data storage reizo_mcfunc_engin:item Field.Rarity{Value:3} run return run data modify storage reizo_mcfunc_engin:item 0001.private.Init.Lore set value [{text:"★★★",color:"white"},{text:"★★",color:"gray"}]
    execute if data storage reizo_mcfunc_engin:item Field.Rarity{Value:4} run return run data modify storage reizo_mcfunc_engin:item 0001.private.Init.Lore set value [{text:"★★★★",color:"white"},{text:"★",color:"gray"}]
    execute if data storage reizo_mcfunc_engin:item Field.Rarity{Value:5} run return run data modify storage reizo_mcfunc_engin:item 0001.private.Init.Lore set value [{text:"★★★★★",color:"white"}]