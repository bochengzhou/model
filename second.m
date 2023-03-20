function h=second
v=first;
for i=1:length(v)
    if v(i)<=0.1
        h(i)=15;
    else if v(i)>0.1 && v(i)<=0.3
            h(i)=100;
    else if v(i)>0.3 && v(i)<=0.6
            h(i)=-200;
    else
        h(i)=300;
    end
    end
    end
end
figure(4)
%plot(h(1:100));
hist(h)
end
