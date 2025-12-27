data modify storage jade:string str1 set from storage jade:display path
data modify storage jade:string str2 set value "_front"
function jade:string/join with storage jade:string
data modify storage jade:display path set from storage jade:string join
#tellraw @a {storage:"jade:display",nbt:"path"}