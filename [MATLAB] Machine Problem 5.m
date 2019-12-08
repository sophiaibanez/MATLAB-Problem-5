n = 0:199;
x = input('Enter x(n) expression: ');
plot(x, 'LineWidth', 2)
hold on

for n = 1:200
    if x(n+5) == 0
        y(n) = -1.5*x(n) + 2*x(n+1) - 0.5*x(n+2);
    elseif x(n+5) > 0 & x(n+5) <= 198
        y(n) = 0.5*x(n+1) - 0.5*x(n-1);
    elseif x(n+5) == 199
        y(n) = 1.5*x(n) - 2*x(n-1) + 0.5*x(n-2);
    end
end
stem(y(n), '-r', 'LineWidth', 2)
legend('x(n)','y(n)')    
    
