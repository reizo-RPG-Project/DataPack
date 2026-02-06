#> rpg:asset/item/0009.ark_pouch/tick/used/export/set/common/components.m
#
# 
#
# @within function rpg:asset/item/0009.ark_pouch/tick/used/export/set/**/*

$item modify entity @s container.$(Slot) {function:"set_components",components:$(components)}