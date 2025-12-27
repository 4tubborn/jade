
#data modify storage jade:display mineable set value "wooden_pickaxe"
#particle angry_villager ~ ~ ~
execute if block ~ ~ ~ #jade:unbreakable run data modify storage jade:display mineable set value "barrier"
execute if block ~ ~ ~ #jade:unbreakable run return run data modify storage jade:display can_drop set value 2

execute unless block ~ ~ ~ #jade:needs_tool run return run function jade:get/block/mining_level/mineable

execute if block ~ ~ ~ #jade:needs_wooden_tool run data modify storage jade:display mineable set value "wooden_pickaxe"
execute if block ~ ~ ~ #needs_stone_tool run data modify storage jade:display mineable set value "stone_pickaxe"
execute if block ~ ~ ~ #needs_iron_tool run data modify storage jade:display mineable set value "iron_pickaxe"
execute if block ~ ~ ~ #needs_diamond_tool run data modify storage jade:display mineable set value "diamond_pickaxe"

#execute if items entity @s weapon.mainhand wooden_pickaxe if block ~ ~ ~ #jade:needs_wooden_tool run return run data modify storage jade:display can_drop set value 1
#execute if items entity @s weapon.mainhand stone_pickaxe if block ~ ~ ~ #needs_stone_tool run return run data modify storage jade:display can_drop set value 1
#execute if items entity @s weapon.mainhand iron_pickaxe if block ~ ~ ~ #needs_iron_tool run return run data modify storage jade:display can_drop set value 1
#execute if items entity @s weapon.mainhand diamond_pickaxe if block ~ ~ ~ #needs_diamond_tool run return run data modify storage jade:display can_drop set value 1

execute if items entity @s weapon.mainhand wooden_pickaxe if block ~ ~ ~ #incorrect_for_wooden_tool run return run data modify storage jade:display can_drop set value 0
execute if items entity @s weapon.mainhand copper_pickaxe if block ~ ~ ~ #incorrect_for_copper_tool run return run data modify storage jade:display can_drop set value 0
execute if items entity @s weapon.mainhand golden_pickaxe if block ~ ~ ~ #incorrect_for_gold_tool run return run data modify storage jade:display can_drop set value 0
execute if items entity @s weapon.mainhand stone_pickaxe if block ~ ~ ~ #incorrect_for_stone_tool run return run data modify storage jade:display can_drop set value 0
execute if items entity @s weapon.mainhand iron_pickaxe if block ~ ~ ~ #incorrect_for_iron_tool run return run data modify storage jade:display can_drop set value 0
execute if items entity @s weapon.mainhand diamond_pickaxe if block ~ ~ ~ #incorrect_for_diamond_tool run return run data modify storage jade:display can_drop set value 0
execute if items entity @s weapon.mainhand netherite_pickaxe if block ~ ~ ~ #incorrect_for_netherite_tool run return run data modify storage jade:display can_drop set value 0
execute unless items entity @s weapon.mainhand #pickaxes if block ~ ~ ~ #jade:incorrect_for_empty_hand run return run data modify storage jade:display can_drop set value 0

data modify storage jade:display can_drop set value 1
