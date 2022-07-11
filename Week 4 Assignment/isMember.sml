fun isMember ([], _) = false
|   isMember (head::tail, element) = 
        if head = element then 
            true
        else isMember (tail, element)

