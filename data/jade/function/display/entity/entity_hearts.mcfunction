$bossbar set jade:box name [\
    {object:"atlas",sprite:"minecraft:entity/$(path)"},\
    {text:" "},\
    {"translate":"$(output)"},\
    {text:" Minecraft",italic:true,color:"blue"},\
    {object:"atlas",atlas:gui,sprite:"hud/heart/full"},\
    {storage:"jade:display",nbt:"health"},\
    {text:"/"},\
    {storage:"jade:display",nbt:"max_health"},\
]
return 1