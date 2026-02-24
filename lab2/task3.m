t = -2:0.001:2;
x2 = @(t) (0.5*t).*((t>=-1) & (t<0)) + (-t+2).*((t>=0) & (t<=1));

figure;
plot(t, x2(t), 'LineWidth', 1.5);
title('Student Task 3: x_2(t)');
xlabel('t');
ylabel('Amplitude');
axis([-1.5 1.5 -1 2.5]);
grid on;
