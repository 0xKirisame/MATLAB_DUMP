clear all
close all
syms t s
x = 3*exp(-2*t)*heaviside(t) - 2*exp(-t)*heaviside(t);
L = laplace(x, s);
L = simplify(L)
n = [1 -1];
d = [1 3 2];
H = tf(n,d);
Wigure
pzmap(H)
