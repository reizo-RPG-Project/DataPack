#> rpg:asset/item/0009.ark_pouch/tick/used/export/set/max_stack_size/set.m
#
# 
#
# @within function rpg:asset/item/0009.ark_pouch/tick/used/export/set/max_stack_size/_

$item replace entity @s container.$(Slot) with $(id)[max_stack_size=$(max_stack_size)] $(count)
execute if data storage reizo_mcfunc_engin:item 0009.private.Item.components run function rpg:asset/item/0009.ark_pouch/tick/used/export/set/common/components.m with storage reizo_mcfunc_engin:item 0009.private.Item