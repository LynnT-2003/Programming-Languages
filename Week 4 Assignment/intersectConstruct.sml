fun isMember ([], _) = false
|   isMember (head::tail, element) = 
        if head = element then 
            true
        else isMember (tail, element)

fun intersectConstructor (nil, setB) = nil
|   intersectConstructor (setA, nil) = nil
|   intersectConstructor (setA, setB) = 
        let
            fun intersectHelper ([], _, intersect) = intersect
            |   intersectHelper (first::rest, setB, intersect) = 
                    if isMember(setB, first) then 
                        intersectHelper(rest, setB, first::intersect)
                    else intersectHelper(rest, setB, intersect)
        in
            intersectHelper (setA, setB, [])
        end;
