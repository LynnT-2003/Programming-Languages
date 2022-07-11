fun truecount nil = 0 |
    truecount (true::rest) = truecount(rest) + 1 |
    truecount (false::rest) = truecount(rest);

