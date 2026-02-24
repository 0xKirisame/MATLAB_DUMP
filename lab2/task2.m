t = -5:0.001:16;
x1 = @(t) (t+1).*((t>=0) & (t<=1)) + 1.*((t>1) & (t<=2));

figure;

subplot(4,1,1);
plot(t, x1(t), 'LineWidth', 1.5);
title('Original Signal: x_1(t)');
xlabel('t');
ylabel('Amplitude');
axis([-5 16 -0.5 2.5]);
grid on;

subplot(4,1,2);
plot(t, x1(t+4), 'LineWidth', 1.5);
title('x_1(t+4)');
xlabel('t');
ylabel('Amplitude');
axis([-5 16 -0.5 2.5]);
grid on;

subplot(4,1,3);
plot(t, x1((1/3)*t - 3), 'LineWidth', 1.5);
title('x_1(1/3 t - 3)');
xlabel('t');
ylabel('Amplitude');
axis([-5 16 -0.5 2.5]);
grid on;

subplot(4,1,4);
plot(t, x1(-2*t + 4), 'LineWidth', 1.5);
title('x_1(-2t + 4)');
xlabel('t');
ylabel('Amplitude');
axis([-5 16 -0.5 2.5]);
grid on;
