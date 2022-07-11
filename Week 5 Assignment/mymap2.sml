fun mymap2 f [] = [] 
|   mymap2 f (first::rest) = f first :: mymap2 f rest

