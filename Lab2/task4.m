t = -5:0.001:6;
x2 = @(t) (0.5*t).*((t>=-1) & (t<0)) + (-t+2).*((t>=0) & (t<=1));

figure;

subplot(4,1,1);
plot(t, x2(t+3), 'LineWidth', 1.5);
title('x_2(t+3)');
xlabel('t');
ylabel('Amplitude');
axis([-5 6 -1 2.5]);
grid on;

subplot(4,1,2);
plot(t, x2(t-4), 'LineWidth', 1.5);
title('x_2(t-4)');
xlabel('t');
ylabel('Amplitude');
axis([-5 6 -1 2.5]);
grid on;

subplot(4,1,3);
plot(t, x2(2*t - 2), 'LineWidth', 1.5);
title('x_2(2t - 2)');
xlabel('t');
ylabel('Amplitude');
axis([-5 6 -1 2.5]);
grid on;

subplot(4,1,4);
plot(t, x2(-0.5*t + 1), 'LineWidth', 1.5);
title('x_2(-0.5t + 1)');
xlabel('t');
ylabel('Amplitude');
axis([-5 6 -1 2.5]);
grid on;
