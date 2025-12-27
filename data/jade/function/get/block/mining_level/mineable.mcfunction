data modify storage jade:display can_drop set value 2

execute if block ~ ~ ~ #mineable/pickaxe if items entity @s weapon.mainhand #pickaxes run data modify storage jade:display can_drop set value 1
execute if block ~ ~ ~ #mineable/axe if items entity @s weapon.mainhand #axes run data modify storage jade:display can_drop set value 1
execute if block ~ ~ ~ #mineable/shovel if items entity @s weapon.mainhand #shovels run data modify storage jade:display can_drop set value 1
execute if block ~ ~ ~ #mineable/hoe if items entity @s weapon.mainhand #hoes run data modify storage jade:display can_drop set value 1
execute if block ~ ~ ~ #jade:mineable/sword if items entity @s weapon.mainhand #swords run data modify storage jade:display can_drop set value 1
execute if block ~ ~ ~ #jade:mineable/shears if items entity @s weapon.mainhand shears run data modify storage jade:display can_drop set value 1

execute if block ~ ~ ~ #jade:mineable/shears run return run data modify storage jade:display mineable set value "shears"
execute if block ~ ~ ~ #jade:mineable/sword run return run data modify storage jade:display mineable set value "wooden_sword"
execute if block ~ ~ ~ #mineable/pickaxe run return run data modify storage jade:display mineable set value "wooden_pickaxe"
execute if block ~ ~ ~ #mineable/axe run return run data modify storage jade:display mineable set value "wooden_axe"
execute if block ~ ~ ~ #mineable/hoe run return run data modify storage jade:display mineable set value "wooden_hoe"
execute if block ~ ~ ~ #mineable/shovel run return run data modify storage jade:display mineable set value "wooden_shovel"

data modify storage jade:display can_drop set value 3

