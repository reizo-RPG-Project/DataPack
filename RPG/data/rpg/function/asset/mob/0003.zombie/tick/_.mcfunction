#> rpg/asset/mob/0003.zombie/tick/_
#
# Mobの常時Tick処理
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/tick/run.m

# 90で飛び掛かり
execute if score @s RPG.Mob.0002.AITimer matches 90 run function rpg:asset/mob/0003.zombie/tick/pounce_on

# 100で戻す
execute if score @s RPG.Mob.0002.AITimer matches 100 store result score @s RPG.STR run data get storage reizo_mcfunc_engin:context data.Field.STR

# 140で終わり
execute if score @s RPG.Mob.0002.AITimer matches 140.. run scoreboard players reset @s RPG.Mob.0002.AITimer

# 親クラス動作の呼び出し
function reizo_mcfunc_engin:api/super/_.m {Type:"mob",Method:"tick/_"}