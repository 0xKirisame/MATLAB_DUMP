a_minus2 = (sqrt(2)/4)*(1 - j);
a_minus1 = 1 + 0.5*j;
a_0 = 1;
a_1 = 1 - 0.5*j;
a_2 = (sqrt(2)/4)*(1 + j);
a = [a_minus2, a_minus1, a_0, a_1, a_2];
k = -2:2;
for i = 1:length(a)
magnitude_a(i) = abs(a(i));
phase_a(i) = angle(a(i));
end
subplot(2,1,1)
h1 = stem(k, magnitude_a, 'k', 'LineWidth', 2);
axis([-3 3 0 1.5])
set(h1, 'Marker', 'none')
xlabel('k')
ylabel('|a_k|')
title('Magnitude')
subplot(2,1,2)
h2 = stem(k, phase_a, 'k', 'LineWidth', 2);
axis([-3 3 -1 1])
set(h2, 'Marker', 'none')
xlabel('k')
ylabel('\angle a_k')
title('Phase')
