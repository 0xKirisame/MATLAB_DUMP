clear all; close all;
syms t w
a = 2;
b = 3;
x = exp(-t)*heaviside(t);
y = exp(t)*heaviside(-t);
LHS = fourier(a*x + b*y);
X_jw = fourier(x);
Y_jw = fourier(y);
RHS = a*X_jw + b*Y_jw;
difference = simplify(LHS - RHS);
disp(difference)
