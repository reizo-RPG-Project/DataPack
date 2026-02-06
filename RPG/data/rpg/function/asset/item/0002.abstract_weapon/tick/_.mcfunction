#> rpg:asset/0002.abstract_weapon/tick/_
#
# ItemのTick処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run.m

# クリック判定用Entityの召喚
function rpg:asset/item/0002.abstract_weapon/tick/summon_click_detection

# クリックしたな！
execute if entity @s[tag=RPG.Input.IsClicked] run function reizo_mcfunc_engin:api/call/_protected.m {Type:"item",Method:"is_clicked/_"}

# function reizo_mcfunc_engin:api/super/_.m {Type:"item",Method:"tick/_"}