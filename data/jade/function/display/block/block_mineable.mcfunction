$bossbar set jade:box name [\
    {object:"atlas",sprite:"minecraft:block/$(path)"},\
    {text:" "},\
    {"translate":"$(output)"},\
    {text:" Minecraft",italic:true,color:"blue"},\
    {object:"atlas",atlas:"items",sprite:"item/$(mineable)"}\
]
return 1