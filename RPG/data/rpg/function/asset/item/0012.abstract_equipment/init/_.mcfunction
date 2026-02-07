#> rpg:asset/item/0012.abstract_equipment/init/_
#
# ItemのInit処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/init/run.m

# 元の防御力を全てなくす
data modify entity @s Item.components."minecraft:attribute_modifiers" append value {"type":"armor",slot:"head",amount:-3,operation:"add_value",id:"minecraft:"}

# 耐久値を無限に
data modify entity @s Item.components."minecraft:unbreakable" set value {}