fun exist (_, nil) = false
|   exist (a,first::rest) = 
        if a = first then true
        else exist(a,rest);

exist (1,[1,2,3,4,5]);

fun lessthan(_, nil) = nil
|   lessthan(a,first::rest) = 
        if first < a then first::lessthan(a,rest)
        else lessthan(a,rest);
lessthan(5,[1,2,3,4,5,6,7,8,9]);

fun repeats(nil) = false
|   repeats([a]) = false
|   repeats(first::rest) = 
        if first = hd(rest) then true
        else repeats(hd(rest)::tl(rest));

fun repeats_alt(nil) = false
|   repeats_alt([a]) = false
|   repeats_alt(a::b::rest) = 
        if a = b then true
        else repeats_alt(b::rest);
