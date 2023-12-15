function [x1,n]=lap(fp, a, b, saiso,x,app) 
    plot(app.UIAxes,1,1,'blue');
    n = 0;
    fp = str2func(['@(x)',fp]); 
    x1 = (a+b)/2;
    while(1)
        y = fp(x1);
        if(abs(y - x1) < saiso) break;
        end
        x1 = y;
        n = n + 1; 
    end
    y = fp(x);
    plot(app.UIAxes,x,y);
end
