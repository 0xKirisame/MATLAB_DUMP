t = -2*pi : pi/100 : 2*pi;
x = 1 + 0.5*cos(2*pi*t) + cos(4*pi*t) + (2/3)*cos(6*pi*t);
plot(t, x, 'LineWidth', 1.5)
axis([-2*pi 2*pi -1 4])
xlabel('t')
ylabel('x(t)')
title('Sinusoidal Representation')
