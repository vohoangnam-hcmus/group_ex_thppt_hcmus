function KQ = tichphansimpson13(fx, a, b, N) 
    fx = str2func(['@(x)',fx]);
    h = (b - a) / N;
    x = a + (0:N) * h;
    fx = feval(fx, x); 
    KQ = h/3 * (fx(1) + 4*sum(fx(2:2:N)) + 2*sum(fx(3:2:N-1)) + fx(N+1));
end 
