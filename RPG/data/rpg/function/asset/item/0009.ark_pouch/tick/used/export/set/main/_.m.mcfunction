#> rpg:asset/item/0009.ark_pouch/tick/used/export/set/main/_.m
#
# 
#
# @within function rpg:asset/item/0009.ark_pouch/tick/used/export/foreach

$item replace entity @s container.$(Slot) with $(id) $(count)
execute if data storage reizo_mcfunc_engin:item 0009.private.Item.components run function rpg:asset/item/0009.ark_pouch/tick/used/export/set/common/components.m with storage reizo_mcfunc_engin:item 0009.private.Item