#> rpg:asset/item/0012.abstract_equipment/tick/equipment/_
#
# 
#
# @within function rpg:asset/item/0012.abstract_equipment/tick/_

# 装備場所ごとに動作変更
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -3 run function rpg:asset/item/0012.abstract_equipment/tick/equipment/head/_
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -4 run function rpg:asset/item/0012.abstract_equipment/tick/equipment/chest/_
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -5 run function rpg:asset/item/0012.abstract_equipment/tick/equipment/legs/_
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -6 run function rpg:asset/item/0012.abstract_equipment/tick/equipment/feet/_