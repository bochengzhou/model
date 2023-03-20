function third


for j=1:6000

% for i=2:100
%     x(i)= mod(a*x(i-1),m);
%     v(i)=x(i)/m;
% end
% i=1;
v=rand(100,1);
for i=1:100
    if v(i)<=0.7
        m(i)=1;
    else
        m(i)=0;
    end
end
max(j)=sum(m);
end
hist(max);
h=1-sum(max>70)/length(max)
end
