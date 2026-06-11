Fs = 1000;
T = 1/Fs;
L = 1000;
t = (0:L-1)*T;
x = 0.7*sin(2*pi*50*t) + 0.3*sin(2*pi*100*t) + 0.4*sin(2*pi*150*t) +
0.8*sin(2*pi*170*t) + 0.5*sin(2*pi*200*t);
noise = randn(size(x));
y = x + noise;
figure;
plot(Fs*t(1:100), y(1:100), 'LineWidth', 2);
title('Student Task 1: Noisy Signal');
xlabel('time (milliseconds)');
ylabel('Amplitude');
