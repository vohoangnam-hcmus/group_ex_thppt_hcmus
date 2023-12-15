function res = symsLagrange(xa, ya, app)
    n = length(xa); 
    sum = 0;
    syms x; 

    for i = 1:n
        tmp = ya(i);
        for j = 1:n
            if j ~= i
                tmp = tmp * (x - xa(j)) / (xa(i) - xa(j));
            end
        end
        sum = sum + tmp;
    end
    res = simplify(sum); 
    y = subs(res,xa);
    res = string(res);
    plot(app.UIAxes2,xa,y,'*',xa,ya,'r');  
end