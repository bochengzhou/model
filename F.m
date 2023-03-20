function x=F(n)
x=0;
for i=1:n+1
    x=x+factorial(100)/(factorial(i-1)*factorial(100-i+1))*0.7^(i-1)*0.3^(100-i+1);
end
x;