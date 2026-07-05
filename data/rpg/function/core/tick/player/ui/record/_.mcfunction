#> rpg:core/tick/player/ui/record/_
#
# 
#
# @within function rpg:core/tick/player/ui/_

# データが無かったら止める
execute unless data storage ui: PlayerData.Record run return 0

# 出す
data modify storage ui: Record.data set from storage ui: PlayerData.Record.Text

# デフォ
    data modify storage ui: Record.data insert 1 value {"text":"\uF82B\uF829\uF828\uF827",font:"space"}
    data modify storage ui: Record.data append value {"text":"\uF80C\uF808\uF801",font:"space"}

# DEFがあったら追加
execute if data storage ui: DEF run data modify storage ui: Record.data append value {"text":"\uF829\uF828\uF822",font:"space"}

#> メモ
# 32 + 16 + 1
# 0(0文字(レコードアイコンのみ)) \uF80A\uF809\uF801 = O

# O -> 64 + 32 + 7
# 49 -> 103
# 48UP(9文字) \uF80B\uF80A\uF807

# O -> 64 + 32 + 8 + 5
# 49 -> 109
# 60UP(10文字) \uF80B\uF80A\uF808\uF805
# 何故かここから11だけプラス4...

# O -> 64 + 32 + 8 + 6 + 5
# 49 -> 115
# 58UP(11文字) \uF80B\uF80A\uF808\uF803 = B