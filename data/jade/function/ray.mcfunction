
#execute store result bossbar jade:test value run random value 100..900
#data remove storage jade:display entity
bossbar set jade:box visible false
execute as @a at @s anchored eyes store result score #need_display jade.info run function #bs.raycast:run {with:{\
    blocks:true,\
    entities:true,\
    max_distance:5,\
    on_targeted_block:"return run execute as @p run function jade:get/block/",\
    on_targeted_entity:"return run function jade:get/entity/"\
}}
execute if score #need_display jade.info matches 1 run return run bossbar set jade:box visible true
#bossbar set jade:box name ""
#bossbar set jade:box visible false