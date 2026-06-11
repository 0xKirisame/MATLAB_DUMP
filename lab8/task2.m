clear all; close all;
syms t w
x = exp(-abs(t));
f = fourier(x);
w_vals = -2*pi:pi/100:2*pi;
F = subs(f, w, w_vals);
]igure;
plot(w_vals, abs(F), '-k', 'LineWidth', 2);
xlabel('\omega');
title('|F(j\omega)|');
]igure;
plot(w_vals, angle(F), '-k', 'LineWidth', 2);
xlabel('\omega');
title('\angle F(j\omega)');
