function five
a=7^5;
m=2^31-1;
c=0;
y(1)=1;
v(1)=1/m;
for i=2:7000
    y(i)= mod(a*y(i-1),m);
    v(i)=y(i)/m;
end

for i=1:7000
    x(i)=tan(pi*(v(i)-1/2));
end
k=find((x<100) & (x>-100));
hist(x(k))
end


