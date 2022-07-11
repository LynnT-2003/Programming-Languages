fun partition (pivot, nil) = (nil, nil)
|   partition (pivot, target::rest) = 
        let 
            val (small, big) = partition(pivot,rest)
        in
            if target < pivot
                then (target::small, big)
            else (small, target::big)
        end;

fun quicksort nil = nil
|   quicksort [a] = [a]
|   quicksort (first::rest) = 
        let
            val (lessthan, greater) = partition(first,rest)
        in
            quicksort(lessthan) @ [first] @ quicksort(greater)
        end;
