#> rpg/asset/object/0001.click_detection/init/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/init/run.m

# Init処理
    team join NoCol
    attribute @s max_health base set 1024
    data modify entity @s Health set value 1024
    data modify entity @s Silent set value 1b
    data modify entity @s NoAI set value 1b