function main
x=0;
for i=0:70
    x=factorial(100)/(factorial(i)*factorial(100-i))*0.7^i*0.3^(100-i)+x;
end
x