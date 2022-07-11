fun lessthan(_, nil) = nil
|   lessthan(element, first::rest) = 
        if first < element then
            first::lessthan(element, rest)
        else lessthan(element, rest)