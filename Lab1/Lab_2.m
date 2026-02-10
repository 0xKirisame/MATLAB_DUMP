n = -10:10;
x = 4 * ones(size(n));

figure
stem(n, x)
grid on
axis([-11 11 0 5])

xlabel('n')
ylabel('x[n]')
title('x[n] = 4')
