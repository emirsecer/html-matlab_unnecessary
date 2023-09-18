x0 = [0 2 0];
tara = [1 15];

[t, x] = ode45('denklem', tara, x0);

subplot(311)
plot(t, x(:,1))
subplot(312)
plot(t, x(:,2))
subplot(313)
plot(t, x(:,3))
