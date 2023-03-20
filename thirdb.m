function thirdb
a=7^5;
m=2^31-1;
c=0;
p(1)=1;
v(1)=1/m;
for i=2:6000
    p(i)= mod(a*p(i-1),m);
    v(i)=p(i)/m;
end
a=0;
b=100;
atol=1.e-8;

x(1)=0;
for j=1:length(v)
  a=0;
  b=100;
for i=1:60000
    if ((F(a)-v(j))*(F(b)-v(j))<=0) && (abs(a-b)>atol) % f(a)*f(b)<0 means there are solutions. abs(a-b)>atol ensure our root is closed to exact solution.
    c=(a+b)/2; % step1 : x_1 is equal to medium value of interval [a,b]
    x(i)=c;
        if (F(c)-v(j))*(F(b)-v(j))<=0 % if f(c)*f(b)<=0, [c,b] exist root. else [a,c] exist root
        a=c;
        else
        b=c;
        end
    else
       o(j)=x(end);
       break
    end
end

end

end