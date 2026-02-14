#> rpg:asset/mob/0004.thief/in_seriously/init/_
#
# 
#
# @within function rpg:asset/mob/0004.thief/in_seriously/_

# ターゲットの動作
execute at @a[tag=RPG.Mob.0002.Target] run function rpg:asset/mob/0004.thief/in_seriously/init/target

# 演出
    execute rotated 0 0 run function rpg:asset/mob/0004.thief/common/fx/1
    execute rotated 0 0 positioned ~ ~0.75 ~ run function rpg:asset/mob/0004.thief/common/fx/2
    execute rotated 0 0 positioned ~ ~1.5 ~ run function rpg:asset/mob/0004.thief/common/fx/1

# 足が早くなる
effect give @s speed infinite 2 true

# ステータスアップ
    scoreboard players add @s RPG.STR 21
    scoreboard players add @s RPG.DEF 14

# 親メソッドの呼び出し
function reizo_mcfunc_engin:api/super/_.m {Type:"mob",Method:"in_seriously/_"}