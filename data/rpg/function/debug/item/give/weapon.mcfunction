#> rpg:debug/item/give/weapon
#
# 
#
# @within function rpg:core/load/_

# アイテムセット
    function reizo_mcfunc_engin:api/item/box.m {ID:"0004.wooden_sword",namespace:"rpg"}
    item replace entity @s container.0 from block 10000 0 10000 container.0
    function reizo_mcfunc_engin:api/item/box.m {ID:"0016.stone_sword",namespace:"rpg"}
    item replace entity @s container.1 from block 10000 0 10000 container.0
    function reizo_mcfunc_engin:api/item/box.m {ID:"0030.copper_sword",namespace:"rpg"}
    item replace entity @s container.2 from block 10000 0 10000 container.0
    function reizo_mcfunc_engin:api/item/box.m {ID:"0017.iron_sword",namespace:"rpg"}
    item replace entity @s container.3 from block 10000 0 10000 container.0
    function reizo_mcfunc_engin:api/item/box.m {ID:"0027.golden_sword",namespace:"rpg"}
    item replace entity @s container.4 from block 10000 0 10000 container.0
    function reizo_mcfunc_engin:api/item/box.m {ID:"0008.edamame_sword",namespace:"rpg"}
    item replace entity @s container.5 from block 10000 0 10000 container.0
    function reizo_mcfunc_engin:api/item/box.m {ID:"0021.wooden_wand",namespace:"rpg"}
    item replace entity @s container.27 from block 10000 0 10000 container.0
    function reizo_mcfunc_engin:api/item/box.m {ID:"0025.amethyst_wand",namespace:"rpg"}
    item replace entity @s container.28 from block 10000 0 10000 container.0
    function reizo_mcfunc_engin:api/item/box.m {ID:"0067.plant_wand",namespace:"rpg"}
    item replace entity @s container.29 from block 10000 0 10000 container.0
    function reizo_mcfunc_engin:api/item/box.m {ID:"0026.echo_wand",namespace:"rpg"}
    item replace entity @s container.30 from block 10000 0 10000 container.0
    function reizo_mcfunc_engin:api/item/box.m {ID:"0028.exp_wand",namespace:"rpg"}
    item replace entity @s container.31 from block 10000 0 10000 container.0
    function reizo_mcfunc_engin:api/item/box.m {ID:"0024.his_wand",namespace:"rpg"}
    item replace entity @s container.32 from block 10000 0 10000 container.0

# お掃除
item replace block 10000 0 10000 container.0 with air