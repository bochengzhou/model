function six
%% Box
u1=rand(10000,1);
u2=rand(10000,1);
R=-log(u1);
V=2*pi*u2;
z1=sqrt(R).*cos(V);
z2=sqrt(R).*sin(V);
figure(1)
hist(z1)
sum(z1<0)
figure(2)
hist(z2)
sum(z2<0)
%% Marsagila
for i=1:100000
v1(i)=-1+2*rand(1);
v2(i)=-1+2*rand(1);
if v1(i)^2+v2(i)^2>=1
    v1(i)=10;
    v2(i)=10;
end
end
v1(find(v1==10))=[];
v2(find(v2==10))=[];
for i=1:10000
S(i) = v1(i)^2+v2(i)^2;
end

for i=1:10000
x1(i)=v1(i)*sqrt(-2*log(S(i))/S(i));
x2(i)=v2(i)*sqrt(-2*log(S(i))/S(i));
end
figure(3)
hist(x1)
sum(x1<0)
figure(4)
hist(x2);
sum(x2<0)

%% Accept
c=1/sqrt(2*pi)*exp(1/8);
f=@(x)1/sqrt(2*pi)*exp(-x^2/2);
g=@(x)exp(-abs(x)/2);
k=0;
for i=1:100000
    q1=rand(1);
    q2=rand(1);
    q3=rand(1);
    x=-log(q1);
    if q2>f(x)/c*g(x)
        e(i-k)= x;
    else
        k=k+1;
    end
    if q3<=1/2
        e(i-k)=-e(i-k);
    end
    if length(e)>=10000
        break
    end
end
figure(5)
hist(e);
sum(e<0)
%% Normal
r=randn(10000,1);
figure(6)
sum(r<0)
hist(r)
    



