#> rpg/asset/mob/0002.abstract_enemy/tick/_
#
# Mobの常時Tick処理
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/tick/run.m

# 敵対時のメソッド
execute if predicate rpg:asset/mob/0002/in_hostil run function reizo_mcfunc_engin:api/call/_protected.m {Type:"mob",Method:"in_hostile/_"}

# これが俺の...本気だ！
execute if data storage reizo_mcfunc_engin:context data.Field{Seriously:1b} if score @s RPG.Mob.0002.SeriouslyValue >= @s RPG.HP run function reizo_mcfunc_engin:api/call/_protected.m {Type:"mob",Method:"in_seriously/_"}

# 誰とも敵対していない場合、タイマーをリセット
execute if entity @s[predicate=!rpg:asset/mob/0002/in_hostil] run scoreboard players reset @s RPG.Mob.0002.AITimer

# Hitタグが付いたならヒット処理をする
execute if entity @s[tag=RPG.Mob.0001.Hit] run function reizo_mcfunc_engin:api/call/_protected.m {Type:"mob",Method:"hit/_"}

# Attackerタグがついたなら攻撃処理
execute if entity @s[tag=RPG.Attacker] run function reizo_mcfunc_engin:api/call/_protected.m {Type:"mob",Method:"attack/_"}

# お掃除
tag @n[tag=RPG.Mob.0002.Target] remove RPG.Mob.0002.Target