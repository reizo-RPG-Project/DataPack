#> rpg:asset/item/0026.echo_wand/is_clicked/_
#
# 
#
# @within function rpg:asset/item/0002.abstract_weapon/tick/_

# 音
playsound minecraft:block.bell.resonate master @s ~ ~ ~ 1 2

# 親メソッド呼び出し
function reizo_mcfunc_engin:api/super/_.m {Type:"item",Method:"is_clicked/_"}