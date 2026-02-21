#> rpg:common/dungeon/door/0001/close
#
# 
#
# @within function rpg:common/dungeon/door/0001/open

# ドアが開けられていないのなら動かない。
execute if data storage rpg:dungeon 0001{Closed_Door:0b} run return 0

# 元の場所に戻す
    execute positioned 4 21 -13 as @e[type=block_display,limit=12,distance=..3,tag=RPG.Dungeon.MoveWall.0001] at @s run function rpg:common/dungeon/door/core/close/pol
    execute as @e[type=minecraft:item_display,limit=12,tag=RPG.Dungeon.MoveWall_Col.0001] at @s run tp @s ~ ~ ~-3

# ドアを開けてないことを示す
data modify storage rpg:dungeon 0001.Opend_Door set value 0b
data modify storage rpg:dungeon 0001.Closed_Door set value 1b
particle block{block_state:{Name:"stone"}} ~ ~ ~ 0.0 0.0 0.0 1 15

# Col用シュルカー召喚メモ
# execute at @e[type=minecraft:block_display] run summon item_display ~0.5 ~ ~0.5 {Tags:["RPG.Dungeon.MoveWall_Col.0001"],Passengers:[{id:"shulker",NoAI:1b,Invulnerable:1b,Silent:1b,active_effects:[{id:"invisibility",duration:-1,show_particles:0b}]}]}