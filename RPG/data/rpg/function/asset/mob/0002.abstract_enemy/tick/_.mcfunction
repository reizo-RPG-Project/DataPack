#> rpg/asset/mob/0002.abstract_enemy/tick/_
#
# Mobの常時Tick処理
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/tick/run.m

# Hitタグが付いたならヒット処理をする
execute if entity @s[tag=RPG.Mob.0001.Hit] run function reizo_mcfunc_engin:api/call/_protected.m {Type:"mob",Method:"hit/_"}

# Attackerタグがついたなら攻撃処理
execute if entity @s[tag=RPG.Attacker] run function reizo_mcfunc_engin:api/call/_protected.m {Type:"mob",Method:"attack/_"}