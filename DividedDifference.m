function res = DividedDifference(xa, ya)
    n = length(xa); 
    res = ya;
    for i = 1:n
        for j = 1:(i - 1)
            res(i) = (res(j) - res(i)) / (xa(j) - xa(i));
        end
    end
end