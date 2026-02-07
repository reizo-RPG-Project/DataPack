#> rpg:asset/item/0012.abstract_equipment/tick/equipment/head/_
#
# 
#
# @within function rpg:asset/item/0012.abstract_equipment/tick/equipment/_

# ComboID取得
execute store result score $Item.0012.Tick.ComboID.Head RPG.Temp run data get storage reizo_mcfunc_engin:context data.Field.ComboID

# DEF取得
execute store result score @s RPG.Item.0012.DEF_Math.Head run data get storage reizo_mcfunc_engin:context data.Field.DEF