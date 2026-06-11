syms t
x = heaviside(t) - 2*heaviside(t-1);
T_1 = 0;
T_0 = 2;
w_0 = 2*pi/T_0;
k1 = -5:5;
a_k1 = (1/T_0)*int(x*exp(-j*k1*w_0*t), t, T_1, T_1+T_0);
x_approx11 = sum(a_k1.*exp(j*k1*w_0*t));
k2 = -15:15;
a_k2 = (1/T_0)*int(x*exp(-j*k2*w_0*t), t, T_1, T_1+T_0);
x_approx31 = sum(a_k2.*exp(j*k2*w_0*t));
k3 = -45:45;
a_k3 = (1/T_0)*int(x*exp(-j*k3*w_0*t), t, T_1, T_1+T_0);
x_approx91 = sum(a_k3.*exp(j*k3*w_0*t));
Rigure;
subplot(3,1,1)
fplot(x_approx11, [0 6])
title('Approximation (11 CoefRicients)')
xlabel('time t')
ylabel('x(t)')
subplot(3,1,2)
fplot(x_approx31, [0 6])
title('Approximation (31 CoefRicients)')
xlabel('time t')
ylabel('x(t)')
subplot(3,1,3)
fplot(x_approx91, [0 6])
title('Approximation (91 CoefRicients)')
xlabel('time t')
ylabel('x(t)')
