data modify entity @s Pos set from storage rx.playerdb:io player.data.primd.vanilla.last_location
execute if data storage rx.playerdb:io player.data.primd.vanilla{last_dimension: "overworld"} in minecraft:overworld positioned as @s run tp @a[tag=vanilla.active_player] ~ ~ ~
execute if data storage rx.playerdb:io player.data.primd.vanilla{last_dimension: "the_nether"} in minecraft:the_nether positioned as @s run tp @a[tag=vanilla.active_player] ~ ~ ~
execute if data storage rx.playerdb:io player.data.primd.vanilla{last_dimension: "the_end"} in minecraft:the_end positioned as @s run tp @a[tag=vanilla.active_player] ~ ~ ~
data modify entity @s Pos set from storage rx.playerdb:io player.data.primd.vanilla.last_spawn
execute if data storage rx.playerdb:io player.data.primd.vanilla{last_spawn_dim: "minecraft:overworld"} in minecraft:overworld positioned as @s run spawnpoint @a[tag=vanilla.active_player] ~ ~ ~
execute if data storage rx.playerdb:io player.data.primd.vanilla{last_spawn_dim: "minecraft:the_nether"} in minecraft:the_nether positioned as @s run spawnpoint @a[tag=vanilla.active_player] ~ ~ ~
execute if data storage rx.playerdb:io player.data.primd.vanilla{last_spawn_dim: "minecraft:the_end"} in minecraft:the_end positioned as @s run spawnpoint @a[tag=vanilla.active_player] ~ ~ ~

setblock 0 0 0 yellow_shulker_box
data modify block 0 0 0 Items set from storage rx.playerdb:io player.data.primd.vanilla.last_inventory
loot give @a[tag=vanilla.active_player] mine 0 0 0 air{drop_contents: 1b}
data modify block 0 0 0 Items set value []
data modify block 0 0 0 Items[0] set from storage rx.playerdb:io player.data.primd.vanilla.helmet
loot replace entity @a[tag=vanilla.active_player] armor.head mine 0 0 0 air{drop_contents: 1b}
data modify block 0 0 0 Items[0] set from storage rx.playerdb:io player.data.primd.vanilla.chestplate
loot replace entity @a[tag=vanilla.active_player] armor.chest mine 0 0 0 air{drop_contents: 1b}
data modify block 0 0 0 Items[0] set from storage rx.playerdb:io player.data.primd.vanilla.leggings
loot replace entity @a[tag=vanilla.active_player] armor.legs mine 0 0 0 air{drop_contents: 1b}
data modify block 0 0 0 Items[0] set from storage rx.playerdb:io player.data.primd.vanilla.boots
loot replace entity @a[tag=vanilla.active_player] armor.feet mine 0 0 0 air{drop_contents: 1b}
data modify block 0 0 0 Items[0] set from storage rx.playerdb:io player.data.primd.vanilla.offhand
loot replace entity @a[tag=vanilla.active_player] weapon.offhand mine 0 0 0 air{drop_contents: 1b}
setblock 0 0 0 air

scoreboard players set xpAdder vanilla.Variables 65536
execute if score @s vanilla.xpStore >= xpAdder vanilla.Variables run xp add @s 65536
execute if score @s vanilla.xpStore >= xpAdder vanilla.Variables run scoreboard players remove @s vanilla.xpStore 65536
scoreboard players set xpAdder vanilla.Variables 32768
execute if score @s vanilla.xpStore >= xpAdder vanilla.Variables run xp add @s 32768
execute if score @s vanilla.xpStore >= xpAdder vanilla.Variables run scoreboard players remove @s vanilla.xpStore 32768
scoreboard players set xpAdder vanilla.Variables 16384
execute if score @s vanilla.xpStore >= xpAdder vanilla.Variables run xp add @s 16384
execute if score @s vanilla.xpStore >= xpAdder vanilla.Variables run scoreboard players remove @s vanilla.xpStore 16384
scoreboard players set xpAdder vanilla.Variables 8192
execute if score @s vanilla.xpStore >= xpAdder vanilla.Variables run xp add @s 8192
execute if score @s vanilla.xpStore >= xpAdder vanilla.Variables run scoreboard players remove @s vanilla.xpStore 8192
scoreboard players set xpAdder vanilla.Variables 4096
execute if score @s vanilla.xpStore >= xpAdder vanilla.Variables run xp add @s 4096
execute if score @s vanilla.xpStore >= xpAdder vanilla.Variables run scoreboard players remove @s vanilla.xpStore 4096
scoreboard players set xpAdder vanilla.Variables 2048
execute if score @s vanilla.xpStore >= xpAdder vanilla.Variables run xp add @s 2048
execute if score @s vanilla.xpStore >= xpAdder vanilla.Variables run scoreboard players remove @s vanilla.xpStore 2048
scoreboard players set xpAdder vanilla.Variables 1024
execute if score @s vanilla.xpStore >= xpAdder vanilla.Variables run xp add @s 1024
execute if score @s vanilla.xpStore >= xpAdder vanilla.Variables run scoreboard players remove @s vanilla.xpStore 1024
scoreboard players set xpAdder vanilla.Variables 512
execute if score @s vanilla.xpStore >= xpAdder vanilla.Variables run xp add @s 512
execute if score @s vanilla.xpStore >= xpAdder vanilla.Variables run scoreboard players remove @s vanilla.xpStore 512
scoreboard players set xpAdder vanilla.Variables 256
execute if score @s vanilla.xpStore >= xpAdder vanilla.Variables run xp add @s 256
execute if score @s vanilla.xpStore >= xpAdder vanilla.Variables run scoreboard players remove @s vanilla.xpStore 256
scoreboard players set xpAdder vanilla.Variables 128
execute if score @s vanilla.xpStore >= xpAdder vanilla.Variables run xp add @s 128
execute if score @s vanilla.xpStore >= xpAdder vanilla.Variables run scoreboard players remove @s vanilla.xpStore 128
scoreboard players set xpAdder vanilla.Variables 64
execute if score @s vanilla.xpStore >= xpAdder vanilla.Variables run xp add @s 64
execute if score @s vanilla.xpStore >= xpAdder vanilla.Variables run scoreboard players remove @s vanilla.xpStore 64
scoreboard players set xpAdder vanilla.Variables 32
execute if score @s vanilla.xpStore >= xpAdder vanilla.Variables run xp add @s 32
execute if score @s vanilla.xpStore >= xpAdder vanilla.Variables run scoreboard players remove @s vanilla.xpStore 32
scoreboard players set xpAdder vanilla.Variables 16
execute if score @s vanilla.xpStore >= xpAdder vanilla.Variables run xp add @s 16
execute if score @s vanilla.xpStore >= xpAdder vanilla.Variables run scoreboard players remove @s vanilla.xpStore 16
scoreboard players set xpAdder vanilla.Variables 8
execute if score @s vanilla.xpStore >= xpAdder vanilla.Variables run xp add @s 8
execute if score @s vanilla.xpStore >= xpAdder vanilla.Variables run scoreboard players remove @s vanilla.xpStore 8
scoreboard players set xpAdder vanilla.Variables 4
execute if score @s vanilla.xpStore >= xpAdder vanilla.Variables run xp add @s 4
execute if score @s vanilla.xpStore >= xpAdder vanilla.Variables run scoreboard players remove @s vanilla.xpStore 4
scoreboard players set xpAdder vanilla.Variables 2
execute if score @s vanilla.xpStore >= xpAdder vanilla.Variables run xp add @s 2
execute if score @s vanilla.xpStore >= xpAdder vanilla.Variables run scoreboard players remove @s vanilla.xpStore 2
scoreboard players set xpAdder vanilla.Variables 1
execute if score @s vanilla.xpStore >= xpAdder vanilla.Variables run xp add @s 1
execute if score @s vanilla.xpStore >= xpAdder vanilla.Variables run scoreboard players remove @s vanilla.xpStore 1