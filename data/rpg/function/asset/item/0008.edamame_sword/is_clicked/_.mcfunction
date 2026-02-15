#> rpg:asset/item/0008.edamame_sword/is_clicked/_
#
# 
#
# @within function rpg:asset/item/0003.abstract_sword/is_clicked/_

# 演出
playsound block.grass.break master @s ~ ~ ~ 1 0
execute anchored eyes positioned ^ ^ ^2 run particle block{block_state:{Name:"wheat",Properties:{age:"4"}}} ~ ~ ~ 0.0 0.5 0.0 0 10

# 親クラスのメソッドを呼び出す。
function reizo_mcfunc_engin:api/super/_.m {Type:"item",Method:"is_clicked/_"}