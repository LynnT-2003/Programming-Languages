fun exist (_,nil) = false
|   exist (element, first::rest) = 
        if first = element then
            true
        else exist(element, rest)