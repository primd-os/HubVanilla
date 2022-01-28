data modify entity @s Pos set from storage rx.playerdb:io player.data.primd.vanilla.last_location
execute if data storage rx.playerdb:io player.data.primd.vanilla{last_dimension:"overworld"} in minecraft:overworld positioned as @s run tp @a[tag=vanilla.active_player] ~ ~ ~
execute if data storage rx.playerdb:io player.data.primd.vanilla{last_dimension:"the_nether"} in minecraft:the_nether positioned as @s run tp @a[tag=vanilla.active_player] ~ ~ ~
execute if data storage rx.playerdb:io player.data.primd.vanilla{last_dimension:"the_end"} in minecraft:the_end positioned as @s run tp @a[tag=vanilla.active_player] ~ ~ ~
data modify entity @s Pos set from storage rx.playerdb:io player.data.primd.vanilla.last_spawn
execute if data storage rx.playerdb:io player.data.primd.vanilla{last_spawn_dim:"minecraft:overworld"} in minecraft:overworld positioned as @s run spawnpoint @a[tag=vanilla.active_player] ~ ~ ~
execute if data storage rx.playerdb:io player.data.primd.vanilla{last_spawn_dim:"minecraft:the_nether"} in minecraft:the_nether positioned as @s run spawnpoint @a[tag=vanilla.active_player] ~ ~ ~
execute if data storage rx.playerdb:io player.data.primd.vanilla{last_spawn_dim:"minecraft:the_end"} in minecraft:the_end positioned as @s run spawnpoint @a[tag=vanilla.active_player] ~ ~ ~

setblock 0 0 0 yellow_shulker_box
data modify block 0 0 0 Items set from storage rx.playerdb:io player.data.primd.vanilla.last_inventory
loot give @a[tag=vanilla.active_player] mine 0 0 0 air{drop_contents:1b}
setblock 0 0 0 air