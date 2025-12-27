function #bs.block:get_type

bossbar set jade:box color white
#say block

#execute store success score #changed jade.info run data modify storage jade:display id set from storage bs:out block.block
#execute if score #changed jade.info matches 0 run return 1

#particle angry_villager ~ ~ ~

#bossbar set jade:box value 0
execute store result bossbar jade:box value run data get block ~ ~ ~ cooking_time_spent
execute store result bossbar jade:box max run data get block ~ ~ ~ cooking_total_time

#execute store result storage jade:display test1 int 1 run bossbar get jade:box value
#execute store result storage jade:display test2 int 1 run bossbar get jade:box max
#tellraw @a [{storage:"jade:display",nbt:"test1"},{text:" "},{storage:"jade:display",nbt:"test2"}]


data modify storage jade:string str1 set value "block.minecraft."
data modify storage jade:string str2 set from storage bs:out block.block

function jade:get/string
function jade:string/texture/


execute as @s[gamemode=creative] run return run function jade:display/block/block_no_correct_tool with storage jade:display
function jade:get/block/mining_level/can_drop

#tellraw @a {storage:"jade:display",nbt:"can_drop"}
#需合适挖掘工具，无法掉落
execute if data storage jade:display {can_drop:0} run return run function jade:display/block/block_no_drops with storage jade:display
#需合适挖掘工具，可以掉落
execute if data storage jade:display {can_drop:1} run return run function jade:display/block/block_with_drops with storage jade:display
#有挖掘工具但可徒手掉落与unbreakable
execute if data storage jade:display {can_drop:2} run return run function jade:display/block/block_mineable with storage jade:display
#无挖掘工具
return run function jade:display/block/block_no_correct_tool with storage jade:display