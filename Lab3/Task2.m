t = -5:0.01:5;
x = exp(2*t) .* (t <= 0);
h = exp(-2*t) .* (t >= 0);

y = conv(x, h) * 0.01;
t2 = linspace(2*min(t), 2*max(t), length(y));

subplot(3,1,1);
plot(t, x);
title('x(t) = e^{2t}u(-t)');
grid on;

subplot(3,1,2);
plot(t, h);
title('h(t) = e^{-2t}u(t)');
grid on;

subplot(3,1,3);
plot(t2, y);
xlim([-5 5]);
title('y(t) = x(t) * h(t)');
grid on;
