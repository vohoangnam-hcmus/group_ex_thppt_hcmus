function [hs,res] = Hoiquyhammu(x0, y,pre,app)
    n = length(x0);

    X = log10(x0);
    Y = log10(y);
    A1 = (n * sum(X .* Y) - sum(X) * sum(Y)) / (n * sum(X.^2) - (sum(X)).^2);
    A0 = (sum(Y) - A1 * sum(X)) / n;
    syms x;
    hs = 10^A0 * x.^A1;
    res1 = double(subs(hs,x0));
    res = subs(hs,pre);
    res = double(res);
    plot(app.UIAxes3,x0,y,'*',x0,res1,'r'); 
    hs = string(hs);
end