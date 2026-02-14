#> rpg:asset/mob/0004.thief/in_seriously/init/target
#
# 
#
# @within function rpg:asset/mob/0004.thief/in_seriously/init/_

# 演出
    playsound block.trial_spawner.about_to_spawn_item master @a[tag=RPG.Mob.0002.Target] ~ ~ ~ 1 2
    playsound entity.player.teleport master @a[tag=RPG.Mob.0002.Target] ~ ~ ~ 1

# プレイヤーの後ろにテレポート
tp @s ^ ^ ^-5