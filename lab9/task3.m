clear all
close all
n = [-2];
d = [1 0 -1];
H = tf(n,d);
Wigure
pzmap(H)
title('Pole-Zero Map of H(s) = -2 / (s^2 - 1)')
