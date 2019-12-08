n = 0:199;
x = input('Enter x(n) expression: ');
y = zeros(size(x));

for i = 1:200
  if i == 0
    x(i)= x(i+2);
    y(i) = -1.5*x(i) + 2*x(i+1) - 0.5*x(i+2);
  elseif i > 0 && i <= 198
    x(i)= x(i+2);
    y(i) = 0.5*x(i+1) - 0.5*x(i-1);
  elseif i == 199
    x(i)= x(i+2);
    y(i) = 1.5*x(i) - 2*x(i-1) + 0.5*x(i-2);
  end
end
plot(x, 'LineWidth', 2)
hold on
plot(y, '-r', 'LineWidth', 2)
legend('x(n)','y(n)')    
axis tight    
