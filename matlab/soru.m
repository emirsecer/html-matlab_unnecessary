tss = [0 500e-3];
b0 = [0 2 0];
[t, b] = ode45(@sonuc, tss, b0);
subplot(311)
plot(t, b(:,1))
subplot(312)
plot(t, b(:,2))
subplot(313)
plot(t, b(:,3))
