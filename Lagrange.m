function res = Lagrange(xa, ya, x)
    n = length(xa); 
    sum = 0;
   
    for i = 1:n
        a = ya(i);
        for j = 1:n
            if j ~= i
                a = a * (x - xa(j)) / (xa(i) - xa(j));
            end
        end
        sum = sum + a;
    end
    res = sum;   
end

