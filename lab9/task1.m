% part 1

clear all
close all
syms t s
x = 3*exp(-2*t)*heaviside(t) - 2*exp(-t)*heaviside(t);
L = laplace(x, s);
L = simplify(L)
n = [1 -1];
d = [1 3 2];
H = tf(n,d);
figure
pzmap(H)

% part 2

clear all
close all
syms t s
x = exp(-2*t)*heaviside(t) + exp(-t)*cos(3*t)*heaviside(t);
L = laplace(x, s);
L = simplify(L)
n = [2 5 12];
d = [1 4 14 20];
H = tf(n,d);
figure
pzmap(H)
