clear all
close all
dt = 0.01;
t = 0:dt:5;
x = heaviside(t) - heaviside(t-1);
h1 = heaviside(t) - heaviside(t-2);
h2 = heaviside(t) - heaviside(t-3);
h1_conv_h2 = conv(h1, h2) * dt;
LHS = conv(x, h1_conv_h2) * dt;
x_conv_h1 = conv(x, h1) * dt;
RHS = conv(x_conv_h1, h2) * dt;
t3 = 0:dt:(3*max(t));
Tigure;
subplot(2,1,1);
plot(t3, LHS, 'LineWidth', 1.5);
axis([0 10 0 1.5]);
title('x(t) * [h_{1}(t) * h_{2}(t)]');
xlabel('t');
ylabel('Amplitude');
grid on;
subplot(2,1,2);
plot(t3, RHS, 'LineWidth', 1.5, 'Color', 'r', 'LineStyle', '--');
axis([0 10 0 1.5]);
title('[x(t) * h_{1}(t)] * h_{2}(t)');
xlabel('t');
ylabel('Amplitude');
grid on;
