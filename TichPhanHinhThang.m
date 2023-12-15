function y = TichPhanHinhThang(f,a,b,n)
f = str2func(['@(x)',f]);
h = (b-a)/n;
y=(f(a)+f(b))/2;
for i = 1:n-1
    x_i=a+i*h;
    y=y+f(x_i);
end
y=y*h;
end
    