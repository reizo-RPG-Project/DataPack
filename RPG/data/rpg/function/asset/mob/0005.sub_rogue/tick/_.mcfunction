#> rpg/asset/mob/0005.sub_rogue/tick/_
#
# Mobの常時Tick処理
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/tick/run.m

# タイマーアップ
scoreboard players add @s RPG.Mob.0005.Timer 1

# 召喚
    execute if score @s RPG.Mob.0005.Timer = @s RPG.Mob.0005.Start_Time run function rpg:asset/mob/0005.sub_rogue/tick/summon/common/init
    execute if score @s RPG.Mob.0005.Timer = @s RPG.Mob.0005.Reset_Time as @e[type=!player,tag=!reizo_mcfunc_Engin.Mob,tag=!reizo_mcfunc_Engin.Object,distance=..25] run function rpg:asset/mob/0005.sub_rogue/tick/summon/common/reset
    execute if score @s RPG.Mob.0005.Timer >= @s RPG.Mob.0005.Start_Time.Temp if score @s RPG.Mob.0005.Timer <= @s RPG.Mob.0005.Summon_Time positioned ~ ~2 ~ run function rpg:asset/mob/0005.sub_rogue/tick/summon/common/fx
    execute if score @s RPG.Mob.0005.Timer = @s RPG.Mob.0005.Summon_Time positioned ~ ~2.1 ~ run function rpg:asset/mob/0005.sub_rogue/tick/summon/common/_

# 常に
execute if entity @s[tag=!RPG.Mob.0005.Summon] run data modify entity @s SpellTicks set value 1

# 親クラス動作の呼び出し
function reizo_mcfunc_engin:api/super/_.m {Type:"mob",Method:"tick/_"}