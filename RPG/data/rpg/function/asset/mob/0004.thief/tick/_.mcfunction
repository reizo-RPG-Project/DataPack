#> rpg:asset/mob/0004.thief/tick/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/tick/run.m

# 550から570までゾンビィ(0003)を召喚するための溜め
execute if score @s RPG.Mob.0002.AITimer matches 550..570 run function rpg:asset/mob/0004.thief/tick/summon/charge

# 570でゾンビィ(0003)を召喚
execute if score @s RPG.Mob.0002.AITimer matches 570 run function rpg:asset/mob/0004.thief/tick/summon/_

# 810で終わり
execute if score @s RPG.Mob.0002.AITimer matches 810 run scoreboard players reset @s RPG.Mob.0002.AITimer

# 親クラス動作の呼び出し
function reizo_mcfunc_engin:api/super/_.m {Type:"mob",Method:"tick/_"}