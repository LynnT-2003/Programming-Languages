fun convert lst = foldr (fn ((a, b), (c, d)) => (a::c, b::d)) ([], []) lst;