function [hs,res] = Hoiquytuyentinh(x0, y, pre,app)
    % x, y la mang du lieu dau vao can hoi quy
    % a, b la he so cua pt hoi quy y = ax + b
    syms x;
    n = length(x0);

    a = (n * sum(x0 .* y) - sum(x0) * sum(y)) / (n * sum(x0.^2) - (sum(x0)).^2);
    b = sum(y) / n - a * sum(x0) / n;

    hs = a*x+b;
    res1 = double(subs(hs,x0));
    disp(res1);
    res = subs(hs,pre);
    res = double(res);
    hs = string(hs); 
    plot(app.UIAxes3,x0,y,'*',x0,res1,'r'); 
end

