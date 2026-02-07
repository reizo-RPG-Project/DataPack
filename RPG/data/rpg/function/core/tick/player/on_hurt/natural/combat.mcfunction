#> rpg:core/tick/player/on_hurt/natural/combat
#
# 
#
# @within advancement rpg:player/on_hurt/natural/combat

# タグをつける
tag @s add RPG.Victim

# 攻撃者の処理
execute on attacker run function rpg:core/tick/player/on_hurt/natural/core/combat/attacker

# お掃除
advancement revoke @s only rpg:player/on_hurt/natural/combat