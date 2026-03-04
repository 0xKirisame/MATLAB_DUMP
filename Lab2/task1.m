t = -3:0.001:3;
x1 = (t+1).*((t>=0) & (t<1)) + 1.*((t>=1) & (t<=2));
figure;
plot(t, x1, 'b', 'LineWidth', 2);
title('Student Task 1: x_1(t)');
xlabel('Time (t)');
ylabel('Amplitude');
axis([-3 3 -0.5 2.5]);
grid on; 
