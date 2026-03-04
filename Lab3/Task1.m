t = 0:0.01:10;
x = exp(-2*t) .* heaviside(t); % heaviside requires the math toolbox addon
h = heaviside(t);

y = conv(x, h) * 0.01;
t2 = 0:0.01:length(y)*0.01 - 0.01;

subplot(3,1,1);
plot(t, x);
title('x(t) = e^{-2t}u(t)');
xlabel('Time (t)');
ylabel('Amplitude');

subplot(3,1,2);
plot(t, h);
title('h(t) = u(t)');
xlabel('Time (t)');
ylabel('Amplitude');

subplot(3,1,3);
plot(t2, y);
axis([0 10 0 0.6]);
title('y(t)');
xlabel('Time (t)');
ylabel('Amplitude');
