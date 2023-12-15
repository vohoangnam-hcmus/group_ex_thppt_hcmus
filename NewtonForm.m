function res = NewtonForm(xa, da, x)
    n = length(da);
    res = da(n);
    for i = (n-1):-1:1
        res = res * (x - xa(i)) + da(i);
    end
end