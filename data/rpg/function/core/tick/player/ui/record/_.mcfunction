#> rpg:core/tick/player/ui/record/_
#
# 
#
# @within function rpg:core/tick/player/ui/_

# お願いOMD!
    function #oh_my_dat:please

# データ取得
data modify storage ui: Record.PlayerData set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].UI.Record

# データが無かったら止める
execute unless data storage ui: Record.PlayerData run return 0

# 出す
data modify storage ui: Record.data set from storage ui: Record.PlayerData.Text

# デフォ
data modify storage ui: Record.data append value {"text":"\uF80A\uF809\uF801",font:"space"}

#> メモ
# 32 + 16 + 1
# 0(0文字(レコードアイコンのみ)) \uF80A\uF809\uF801 = O

# O -> 64 + 32 + 1
# 49 -> 97
# 48UP(9文字) \uF80B\uF80A\uF801 = ...

# O -> 64 + 32 + 7
# 49 -> 103
# 54UP(10文字) \uF80B\uF80A\uF807 = A
# 何故かここから11だけプラス4...

# O -> 64 + 32 + 8 + 3
# 49 -> 107
# 58UP(11文字) \uF80B\uF80A\uF808\uF803 = B

# O -> 64 + 32 + 16 + 1
# 49 -> 113
# 64UP(12文字) \uF80B\uF80A\uF809\uF801 = C

# O -> 64 + 32 + 16 + 7
# 49 -> 119
# 70UP(13文字) \uF80B\uF80A\uF809\uF807 = D

# O -> 64 + 32 + 16 + 8 + 5
# 49 -> 125
# 76UP(14文字) \uF80B\uF80A\uF809\uF808\uF805 = E

# O -> 64 + 32 + 32 + 3
# 49 -> 131
# 82UP(15文字) \uF80B\uF80A\uF809\uF808\uF805 = F