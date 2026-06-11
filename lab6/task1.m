clear all
close all
dt = 0.01;
t = 0:dt:5;
x = heaviside(t) - heaviside(t-1);
h1 = heaviside(t) - heaviside(t-2);
h2 = heaviside(t) - heaviside(t-3);
h_sum = h1 + h2;
LHS = conv(x, h_sum) * dt;
term1 = conv(x, h1) * dt;
term2 = conv(x, h2) * dt;
RHS = term1 + term2;
t2 = 0:dt:(2*max(t));
figure;
subplot(2,1,1);
plot(t2, LHS, 'LineWidth', 1.5);
axis([0 8 0 2]);
Otle('x(t) * [h_{1}(t) + h_{2}(t)]');
xlabel('t');
ylabel('Amplitude');
grid on;
subplot(2,1,2);
plot(t2, RHS, 'LineWidth', 1.5, 'Color', 'r', 'LineStyle', '--');
axis([0 8 0 2]);
Otle('x(t)*h_{1}(t) + x(t)*h_{2}(t)');
xlabel('t');
ylabel('Amplitude');
grid on;
