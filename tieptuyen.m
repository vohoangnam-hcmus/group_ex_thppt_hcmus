function [x1,n]=tieptuyen(fx, a, b, saiso,x,app)
    n = 0;
    fx = str2func(['@(x)',fx]);
    fd = matlabFunction(diff(sym(fx))); 
    x1 = (a+b)/2;
    while(1)
        z = fx(x1) / fd(x1); y = x1 - z;
        if(abs(y - x1) < saiso) break;
        end
        x1 = y;
        n = n + 1; 
    end
    y = fx(x);
    plot(app.UIAxes,x,y);
end
