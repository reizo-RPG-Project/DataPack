#> rpg/asset/object/0002.item/tick/_
#
# Objectの常時Tick処理
#
# @within function reizo_mcfunc_engin:asset/object/.manager/tick/run.m

# 俺だ！
tag @s add This

# チェック
execute as @a if predicate {condition:"entity_properties",entity:"this",predicate:{movement:{speed:{min:4},fall_distance:{min:0}}}} run data modify storage reizo_mcfunc_engin:object 0002.private.is_move set value 1b

# 条件を満たしているのなら演出を
execute if entity @a[distance=..8] if data entity @s {OnGround:1b} unless entity @e[type=item,distance=..0.8,tag=!This] if data storage reizo_mcfunc_engin:object 0002.private{is_move:1b} run function rpg:asset/object/0002.item/tick/fx/run.m with storage reizo_mcfunc_engin:context data.Field.FX

# お掃除
tag @s remove This
data remove storage reizo_mcfunc_engin:object 0002
scoreboard players reset $Object.0002.Age