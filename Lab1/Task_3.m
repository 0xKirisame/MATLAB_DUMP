t = 0:0.01:5;
C = 5;
a = -1;
x = C * exp(a*t);

figure
plot(t, x)
grid on

xlabel('Time t')
ylabel('x(t)')
title('x(t) = 5e^{-t}')
