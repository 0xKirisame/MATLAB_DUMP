clear all; close all;
syms t w w_0
F1 = 1;
x1 = ifourier(F1, t);
disp(x1)
F2 = 1/(2+w*1i);
x2 = ifourier(F2, t);
disp(x2)
F3 = -pi*(dirac(w-w_0)-dirac(w+w_0))*1i;
x3 = ifourier(F3, t);
x3 = simplify(x3);
disp(x3)
