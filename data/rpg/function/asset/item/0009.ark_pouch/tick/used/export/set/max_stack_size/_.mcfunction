#> rpg:asset/item/0009.ark_pouch/tick/used/export/set/max_stack_size/_
#
# 
#
# @within function rpg:asset/item/0009.ark_pouch/tick/used/export/foreach

data modify storage reizo_mcfunc_engin:item 0009.private.Item.max_stack_size set from storage reizo_mcfunc_engin:item 0009.private.Item.components."minecraft:max_stack_size"
function rpg:asset/item/0009.ark_pouch/tick/used/export/set/max_stack_size/set.m with storage reizo_mcfunc_engin:item 0009.private.Item