#> rpg:asset/mob/0004.thief/in_seriously_init/target
#
# 
#
# @within function rpg:asset/mob/0004.thief/in_seriously_init/_

# 演出
    playsound block.trial_spawner.about_to_spawn_item master @a[tag=RPG.Mob.0002.Target] ~ ~ ~ 1 2
    playsound entity.player.teleport master @a[tag=RPG.Mob.0002.Target] ~ ~ ~ 1

# プレイヤーの後ろにテレポート
execute positioned ^ ^ ^-5 run function rpg:asset/mob/0004.thief/in_seriously_init/tp