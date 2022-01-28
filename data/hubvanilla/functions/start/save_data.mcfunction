function #rx.playerdb:api/v2/get/self
execute as @s[predicate=hub:in_overworld] run data modify storage rx.playerdb:io player.data.primd.vanilla.last_dimension set value "overworld"
execute as @s[predicate=hub:in_nether] run data modify storage rx.playerdb:io player.data.primd.vanilla.last_dimension set value "the_nether"
execute as @s[predicate=hub:in_end] run data modify storage rx.playerdb:io player.data.primd.vanilla.last_dimension set value "the_end"
execute unless data entity @s SpawnX run data remove storage rx.playerdb:io player.data.primd.vanilla.last_spawn
execute if data entity @s SpawnX run data modify storage rx.playerdb:io player.data.primd.vanilla.last_spawn set value [0d,100d,0d]
execute if data entity @s SpawnX store result storage rx.playerdb:io player.data.primd.vanilla.last_spawn[0] double 1 run data get entity @s SpawnX
execute if data entity @s SpawnX store result storage rx.playerdb:io player.data.primd.vanilla.last_spawn[1] double 1 run data get entity @s SpawnY
execute if data entity @s SpawnX store result storage rx.playerdb:io player.data.primd.vanilla.last_spawn[2] double 1 run data get entity @s SpawnZ
data modify storage rx.playerdb:io player.data.primd.vanilla.last_spawn_dim set from entity @s SpawnDimension
data modify storage rx.playerdb:io player.data.primd.vanilla.last_location set from entity @s Pos 
data modify storage rx.playerdb:io player.data.primd.vanilla.last_inventory set from entity @s Inventory
function #rx.playerdb:api/v2/save/self