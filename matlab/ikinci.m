% Veri noktalar�n� al�n
x = input('X verilerini girin: ');
y = input('Y verilerini girin: ');

% Polinom derecesini al�n
deg = input('Polinom derecesini girin: ');

% Polinom katsay�lar�n� hesaplay�n
p = polyfit(x, y, deg);

% Veri noktalar�n� ve polinomu grafikte g�sterin
plot(x, y, 'o');
hold on;
xx = linspace(min(x), max(x), 100);
yy = polyval(p, xx);
plot(xx, yy);
xlabel('X De�erleri');
ylabel('Y De�erleri');
title(sprintf('Polinom Derecesi %d', deg));
legend('Veri Noktalar�', 'Uydurulan Polinom');
