#> rpg:asset/mob/0002.abstract_enemy/hit/_
#
# 
#
# @within function rpg:asset/mob/0002.abstract_enemy/tick/_

# 見た目上のダメージ
damage @s 0.0 generic

# 防御減算
function rpg:common/status/def/dmg_reduction

# ダメージブレ
function rpg:common/damage/blur

# HPを減らす
scoreboard players operation @s RPG.HP -= @s RPG.DMG

# おん、死んだ！
execute if score @s RPG.HP matches ..0 run function reizo_mcfunc_engin:api/call/_protected.m {Type:"mob",Method:"remove/_"}

# お掃除
tag @s remove RPG.Mob.0001.Hit