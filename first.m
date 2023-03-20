function v=first

a=7^5;
m=2^31-1;
c=0;
x(1)=1;
v(1)=1/m;
for i=2:100000
    x(i)= mod(a*x(i-1),m);
    v(i)=x(i)/m;
end
figure(1)
hist(v);
mean(v)
var(v)


%%
k=rand(100000,1);
figure(2)
hist(k);

figure(3)
plot(v(1:99999),v(2:100000))

end