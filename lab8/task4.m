clear all; close all;
syms t w
x_shifted = exp(-2*(t-3)) * heaviside(t-3);
f_shifted = fourier(x_shifted);
w_vals = -2*pi:pi/100:2*pi;
F_shifted = subs(f_shifted, w, w_vals);
figure;
plot(w_vals, abs(F_shifted), '-k', 'LineWidth', 2);
xlabel('\omega');
title('|F(j\omega)|');
figure;
plot(w_vals, angle(F_shifted), '-k', 'LineWidth', 2);
xlabel('\omega');
title('\angle F(j\omega)');
