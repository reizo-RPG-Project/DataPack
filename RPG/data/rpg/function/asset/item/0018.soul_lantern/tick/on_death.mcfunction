#> rpg:asset/item/0018.soul_lantern/tick/on_death
#
# 俺はまだ死んで無いぜ！
#
# @within function rpg:asset/item/0018.soul_lantern/tick/_

# 演出
    particle totem_of_undying ~ ~1 ~ 0 0 0 1 25
    playsound item.totem.use master @s ~ ~ ~
    summon lightning_bolt ~ ~ ~

# 復活
    effect give @s saturation 1 20
    scoreboard players operation @s RPG.HP = @s RPG.HP_MAX

# お掃除
tag @s remove RPG.Death

# 言葉
tellraw @s [{"text":"ﾗﾝ･ﾀｧﾝ ",color:"white",italic:1b},{"text":":",color:"green",italic:0b},{"text":"余の魂...無駄にするでないぞ！",color:"white",bold:1b,italic:0b}]

# アイテムの消去
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches 9 run return run function reizo_mcfunc_engin:api/item/del.m {Slot:9b,Count:1}
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches 10 run return run function reizo_mcfunc_engin:api/item/del.m {Slot:10b,Count:1}
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches 11 run return run function reizo_mcfunc_engin:api/item/del.m {Slot:11b,Count:1}