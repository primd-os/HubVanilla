execute as @a[predicate=hub:in_survival] unless score @s vanilla.deaths matches 0 at @s run function hubvanilla:start/on_death
schedule function hubvanilla:start/main 1t replace