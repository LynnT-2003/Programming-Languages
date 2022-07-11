fun isMember ([], _) = false
|   isMember (head::tail, element) = 
        if head = element then 
            true
        else isMember (tail, element)

fun unionConstructor (nil, setB) = setB
|   unionConstructor (setA, nil) = setA
|   unionConstructor (setA, setB) = 
        let
            fun unionHelper ([], [], union) = union
            |   unionHelper (_, first::rest, union) = 
                    if isMember(union, first) then 
                        unionHelper([], rest, union)
                    else unionHelper([], rest, first::union)
            |   unionHelper (setA, setB, _) = unionHelper([], setB, setA)
        in
            unionHelper (setA, setB, [])
        end
