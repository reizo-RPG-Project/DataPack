#> rpg:common/dungeon/door/0001/open
#
# 
#
# @public

# セット
data modify storage rpg:dungeon 0001 set value {Closed_Door:0b,Opend_Door:1b}

# 描画ディスプレイに関する処理
execute positioned 4 21 -13 as @e[type=block_display,limit=12,distance=..3,tag=RPG.Dungeon.MoveWall.0001] unless data entity @s transformation{translation:[0.0f,0.0f,4.0f]} at @s run function rpg:common/dungeon/door/core/open/pol

# 移動当たり判定ディスプレイの開始
scoreboard players set $0001.MoveWall.Col RPG.Dungeon 0