clear all; close all;
syms t w
y = exp(-3*t)*heaviside(t);
Y = fourier(y);
H = 1/(3 + w*1i);
X = Y / H;
x = ifourier(X, t);
x = simplify(x);
disp(x)
