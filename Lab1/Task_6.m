t = 0:0.01:40;
x = 3 * exp(-0.1*t) .* cos(2*t + pi/4);

figure
plot(t, x)
grid on

xlabel('Time t')
ylabel('x(t)')
title('x(t) = 3e^{-0.1t}cos(2t + \pi/4)')
