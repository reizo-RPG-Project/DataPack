#> rpg:asset/item/0001.abstract_item/init/lore/_
#
# 
#
# @within function rpg:asset/item/0001.abstract_item/init/_

# そのステータスが存在するのなら追加
    execute if data storage reizo_mcfunc_engin:item Field.STR run function rpg:asset/item/0001.abstract_item/init/lore/str
    execute if data storage reizo_mcfunc_engin:item Field.INT run function rpg:asset/item/0001.abstract_item/init/lore/int
    execute if data storage reizo_mcfunc_engin:item Field.DEF run function rpg:asset/item/0001.abstract_item/init/lore/def