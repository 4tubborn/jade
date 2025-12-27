#data remove storage jade:display id
bossbar set jade:box color red

data modify storage jade:display has_armor set value 0
summon text_display ~ ~ ~ {Tags:["jade.tmp"]}
ride @s mount @n[type=text_display,distance=..0.5]
data modify storage jade:string str1 set value "entity.minecraft."
execute on vehicle run data modify storage jade:string str2 set from entity @s Passengers[0].id

execute on vehicle store result storage jade:display health int 1 store result bossbar jade:box value run data get entity @s Passengers[0].Health
execute on vehicle run kill @s
execute store result score #armor jade.info run attribute @s armor get 100
execute unless score #armor jade.info matches 0 store result storage jade:display armor int 1 run attribute @s armor get 1
execute store result storage jade:display max_health int 1 store result bossbar jade:box max run attribute @s max_health get 1
function jade:get/string


execute unless score #armor jade.info matches 0 run return run function jade:display/entity/entity_armor with storage jade:display
return run function jade:display/entity/entity_hearts with storage jade:display