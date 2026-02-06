#> rpg:asset/item/0002.abstract_weapon/tick/summon_click_detection
#
# 
#
# @within function rpg:asset/item/0002.abstract_weapon/tick/_

execute positioned ~ ~1.625 ~ run function reizo_mcfunc_engin:api/object/summon.m {ID:"0001.click_detection",namespace:"rpg"}
execute positioned ~ ~0.815 ~ run function reizo_mcfunc_engin:api/object/summon.m {ID:"0001.click_detection",namespace:"rpg"}
execute positioned ~0.205 ~1 ~ run function reizo_mcfunc_engin:api/object/summon.m {ID:"0001.click_detection",namespace:"rpg"}
execute positioned ~-0.205 ~1 ~ run function reizo_mcfunc_engin:api/object/summon.m {ID:"0001.click_detection",namespace:"rpg"}
execute positioned ~ ~1 ~0.205 run function reizo_mcfunc_engin:api/object/summon.m {ID:"0001.click_detection",namespace:"rpg"}
execute positioned ~ ~1 ~-0.205 run function reizo_mcfunc_engin:api/object/summon.m {ID:"0001.click_detection",namespace:"rpg"}