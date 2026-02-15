#> rpg:asset/item/0003.abstract_sword/is_clicked/_
#
# 
#
# @within function rpg:asset/item/0002.abstract_weapon/tick/_

# 演出
    execute positioned ~ ~-0.5 ~ anchored eyes run particle sweep_attack ^ ^ ^1.6
    playsound entity.player.attack.sweep master @s ~ ~ ~ 1 1