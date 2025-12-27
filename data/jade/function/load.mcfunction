bossbar add jade:box ""
bossbar set jade:box players @a

scoreboard objectives add jade.info dummy
scoreboard players set #armor jade.info -1
scoreboard players set #need_display jade.info 0
scoreboard players set #changed jade.info 1

