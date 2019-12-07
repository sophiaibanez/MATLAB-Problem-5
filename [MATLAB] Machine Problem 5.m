n = 0:199;
x = input('Enter x(n) expression: ');
plot(x)
hold on

for n = 1:length(x)
    if x(n) == 0
        y(n) = -1.5*x(n) + 2*x(n+1) - 0.5*x(n+2);
    elseif x(n) > 0 & x(n) <= 198
        y(n) = 0.5*x(n+1) - 0.5*x(n-1);
    elseif x(n) == 199
        y(n) = 1.5*x(n) - 2*x(n-1) + 0.5*x(n-2);
    end
end
stem(y(n))
    
    