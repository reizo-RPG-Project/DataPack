#> rpg:asset/mob/0003.zombie/tick/pounce_on
#
# 
#
# @within function rpg:asset/mob/0003.zombie/tick/_

# 攻撃力アップ
scoreboard players add @s RPG.STR 7

# Motion適応
    scoreboard players set $MotionPower reizo_mcfunc_Engin.Temp 150
    function reizo_libs:motion/pounce_on