function result = symsNewton(xa , ya, app)
    syms x;
    da = DividedDifference(xa, ya);
    result = NewtonForm(xa, da, x);
    result = simplify(result);
    y = subs(result,xa);
    result = string(result);
    plot(app.UIAxes2,xa,y,'*',xa,ya,'r'); 
end