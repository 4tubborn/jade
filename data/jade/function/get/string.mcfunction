data modify storage jade:string str2 set string storage jade:string str2 10
function jade:string/join with storage jade:string
data modify storage jade:display output set from storage jade:string join
data modify storage jade:display path set from storage jade:string str2