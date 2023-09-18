% Sistem denklem fonksiyonlar�
dxdt = @(t,x,y) x - 3*y - sin(t);
dydt = @(t,x,y) x - 2*y;

% Ba�lang�� ko�ullar�
x0 = 2;
y0 = 3;
tspan = [0 3];

% ODE45 kullanarak denklem ��z�m�
[t, sol] = ode45(@(t,x) [dxdt(t,x(1),x(2)); dydt(t,x(1),x(2))], tspan, [x0 y0]);

% Grafiklerin �izimi
subplot(2,1,1)
plot(t, sol(:,1))
xlabel('t')
ylabel('x(t)')
title('x(t) grafi�i')

subplot(2,1,2)
plot(t, sol(:,2))
xlabel('t')
ylabel('y(t)')
title('y(t) grafi�i')
