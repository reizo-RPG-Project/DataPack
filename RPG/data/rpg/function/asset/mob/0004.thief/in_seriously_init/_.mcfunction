#> rpg:asset/mob/0004.thief/in_seriously_init/_
#
# 
#
# @within function rpg:asset/mob/0002.abstract_enemy/in_seriously/_

# ターゲットの動作
execute at @a[tag=RPG.Mob.0002.Target] run function rpg:asset/mob/0004.thief/in_seriously_init/target

# 演出
particle witch ~ ~1 ~ 0.3 0.5 0.3 0 25

# 足が早くなる
effect give @s speed infinite 2 true

# ステータスアップ
    scoreboard players add @s RPG.STR 21
    scoreboard players add @s RPG.DEF 14

# 親メソッドの呼び出し
function reizo_mcfunc_engin:api/super/_.m {Type:"mob",Method:"in_seriously_init/_"}