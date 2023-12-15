function dx = daoham2(fx,x,h,app)
    fx = str2func(['@(x)',fx]);
    if(app.Oh2Button.Value == 1)
        if (app.TienButton.Value == 1)
            dx = (4*fx(x+h) - 3*fx(x) - fx(x+2*h)) / (2*h);
        elseif(app.LuiButton.Value == 1)
            dx = (3*fx(x) - 4*fx(x - h) + fx(x-2*h)) / (2*h);
        else
            dx = (fx(x+h) - fx(x-h)) / (2*h);
        end
    else
         if (app.TienButton.Value == 1)
            dx = (fx(x+h)-fx(x)) / h;
         else
            dx = (fx(x)-fx(x-h)) / h;
         end
    end
end