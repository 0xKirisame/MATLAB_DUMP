t = 0:0.01:4;
x = 3 * cos(pi*t + pi/2);

figure
plot(t, x)
grid on

xlabel('Time t')
ylabel('x(t)')
title('x(t) = 3cos(\pi t + \pi/2)')
