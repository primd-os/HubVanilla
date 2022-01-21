execute in minecraft:overworld run tp @s 0 254 0
execute in minecraft:overworld positioned 0 254 0 run function hub:main/death/spawnpoint
team join vanilla.Team @s
gamemode survival
scoreboard players set @s hub.fallDmgPercent 100
scoreboard players set @s vanilla.deaths 0

function #rx.playerdb:api/v2/get/self

tag @s add vanilla.active_player
execute if data storage rx.playerdb:io player.data.primd.vanilla.last_location run summon marker ~ ~ ~ {Tags:["vanilla.tper"]}
execute as @e[type=marker,x=0,tag=vanilla.tper] run function hubvanilla:start/tp_last_location
kill @e[type=marker,x=0,tag=vanilla.tper]
tag @s remove vanilla.active_player