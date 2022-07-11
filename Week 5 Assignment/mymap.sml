fun mymap f lst = foldr (fn(a,b) => f a::b) [] lst 

fun mymap_alt f [] = []
|   mymap_alt f (first::rest) = f first :: mymap_alt f rest