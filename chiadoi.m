function [c,n] = chiadoi(fx,a,b,saiso,x,app) 
    n = 0;
    f = str2func(['@(x)',fx]); 
    while(1)
        c = (a+b)/2;
       if(f(c) * f(a) < 0)
           b = c; 
       else
           a = c;
       end
       if (abs(b-a) < saiso) break;
       end
      n = n + 1;
    end
    c = a; 
    y = f(x);
    plot(app.UIAxes,x,y);
end
