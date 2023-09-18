function xdot = denklem(t, x)

xdot = zeros(3, 1);
L1 = 0.005;
C1 = 0.01;
R1 = 2;
R2 = 4;
L2 = 0.001;
f = 50;
Vk = 2*sin((2*pi)*f*t);

if t < 150
    xdot(1) = 1/(L1*x(2));
    xdot(2) = (-1/C1)*x(1)-(1/(R1-C1))*x(2);
    
else
    xdot(1) = (-R1/L1)*x(1);
    xdot(2) = (1/C1)*x(3);
    xdot(3) = (-1/L2)*Vk-(1/L2)*x(2)-(R2/L2)*x(3);
end
