t = -10:0.01:10;
x = exp(2*t) .* (t <= 0);
h = 1.0 * (t >= 3);

y = conv(x, h) * 0.01;
t2 = linspace(2*min(t), 2*max(t), length(y));

figure;
subplot(3,1,1);
plot(t, x);
title('x(t) = e^{2t}u(-t)');

subplot(3,1,2);
plot(t, h);
title('h(t) = u(t-3)');

subplot(3,1,3);
plot(t2, y);
xlim([-5 10]);
title('y(t)'); 
