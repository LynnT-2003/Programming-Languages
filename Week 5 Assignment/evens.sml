fun evens_wrong lst = foldr (fn(a,b) => if a mod 2 = 0 then a::b else b) lst

fun evens_foldr lst = foldr (fn(a,b) => if a mod 2 = 0 then a::b else b) [] lst

fun evens2 nil = nil |
    evens2 (a::rest) = 
    if a mod 2 = 0 then 
        a :: evens2(rest) 
    else evens2(rest)

