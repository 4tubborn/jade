execute if data storage jade:display {path:"grass_block"} run return run function jade:string/texture/side
execute if block ~ ~ ~ furnace[lit=false] run return run function jade:string/texture/front
execute if block ~ ~ ~ furnace[lit=true] run return run function jade:string/texture/front_on
execute if block ~ ~ ~ blast_furnace[lit=false] run return run function jade:string/texture/front
execute if block ~ ~ ~ blast_furnace[lit=true] run return run function jade:string/texture/front_on
execute if block ~ ~ ~ smoker[lit=false] run return run function jade:string/texture/front
execute if block ~ ~ ~ smoker[lit=true] run return run function jade:string/texture/front_on
execute if data storage jade:display {path:"command_block"} run return run function jade:string/texture/front
execute if data storage jade:display {path:"chain_command_block"} run return run function jade:string/texture/front
execute if data storage jade:display {path:"repeating_command_block"} run return run function jade:string/texture/front
execute if data storage jade:display {path:"tnt"} run return run function jade:string/texture/side