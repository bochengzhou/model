function four
a=7^5;
m=2^31-1;
c=0;
x(1)=1;
v(1)=1/m;
for i=2:5000
    x(i)= mod(a*x(i-1),m);
    v(i)=x(i)/m;
end

for i=1:5000
    y(i)=-log(1-v(i))/5;
end
hist(y)