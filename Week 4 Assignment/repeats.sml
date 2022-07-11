fun repeats nil = false
|   repeats ([a]) = false
|   repeats (a::b::rest) = 
        if a = b then 
            true
        else repeats (b::rest)