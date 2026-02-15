#> rpg:asset/item/0002.abstract_weapon/is_clicked/_
#
# 
#
# @within function rpg:asset/item/0002.abstract_weapon/tick/_

# Attackerタグつけ
tag @s add RPG.Attacker

# どれくらい貯めたか検知
    execute if predicate rpg:click_detection/charge run function reizo_mcfunc_engin:api/call/_protected.m {Type:"item",Method:"charged/_"}
    execute if predicate rpg:click_detection/uncharge run function reizo_mcfunc_engin:api/call/_protected.m {Type:"item",Method:"uncharged/_"}

# 当たり判定処理
execute anchored eyes positioned ^ ^ ^ run function reizo_mcfunc_engin:api/call/_protected.m {Type:"item",Method:"rec/_"}

# Hitしたやつへの処理
execute as @e[tag=reizo_mcfunc_Engin.Mob,tag=RPG.Mob.0001.Enemy,tag=RPG.Mob.0001.Hit,type=!player,distance=..100] run function reizo_mcfunc_engin:api/call/_protected.m {Type:"item",Method:"hit/_"}

# お掃除
    tag @s remove RPG.Input.IsClicked
    tag @s remove RPG.Attacker
    advancement revoke @s only rpg:click_detection

# tellraw @a [{"selector":"@s",color:"gold"},{"text":"はクリックした！",color:"white"}]