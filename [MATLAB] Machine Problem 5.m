n = 0:200;
x = input('Enter x(n) expression: ');
y = zeros(size(x));

for i = 1:201
  if i == 0
    y(i) = -1.5*x(i+2) + 2*x(i+3) - 0.5*x(i+4);
  elseif i > 0 && i <= 198
    y(i) = 0.5*x(i+3) - 0.5*x(i+1);
  elseif i == 199
    y(i) = 1.5*x(i+2) - 2*x(i+1) + 0.5*x(i);
  end
end
plot(x, 'LineWidth', 2)
hold on
plot(y, '-r', 'LineWidth', 2)
title('Graphs: x(n) and y(n)')
legend('x(n)','y(n)')    
axis tight  
