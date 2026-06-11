% part 1

clear all
close all
n1 = [1];
d1 = [1 -2];
H1 = tf(n1,d1);
figure
pzmap(H1)
title('Pole-Zero Map: h(t) = exp(2t)u(t)')

% part 2

clear all
close all
n2 = [1 1 -1];
d2 = [1 6 11 6];
H2 = tf(n2,d2);
figure
pzmap(H2)
title('Pole-Zero Map: X(s) = (s^2+s-1)/(s^3+6s^2+11s+6)')
