clear all
close all
syms t s
x = exp(-2*t)*heaviside(t);
X = laplace(x, s);
dx = diff(x, t);
L_dx = laplace(dx, s);
sX = s * X;
difference = simplify(L_dx - sX)
