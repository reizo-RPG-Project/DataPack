#> rpg:asset/item/0002.abstract_weapon/init/_
#
# ItemのInit処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/init/run.m

# AttackSpeedのセット
    data modify entity @s Item.components."minecraft:attribute_modifiers" append value {type:"attack_speed",amount:0,id:"minecraft:",slot:"mainhand",operation:"add_value"}
    data modify entity @s Item.components."minecraft:attribute_modifiers"[-1].amount set from storage reizo_mcfunc_engin:item Field.AttackSpeed