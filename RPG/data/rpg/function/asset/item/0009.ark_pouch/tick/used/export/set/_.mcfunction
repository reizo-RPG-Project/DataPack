#> rpg:asset/item/0009.ark_pouch/tick/used/export/set/_
#
# 
#
# @within function rpg:asset/item/0009.ark_pouch/tick/used/export/foreach

# set関係
    execute if data storage reizo_mcfunc_engin:item 0009.private.Item.components."minecraft:max_stack_size" run return run function rpg:asset/item/0009.ark_pouch/tick/used/export/set/max_stack_size/_
    function rpg:asset/item/0009.ark_pouch/tick/used/export/set/main/_.m with storage reizo_mcfunc_engin:item 0009.private.Item