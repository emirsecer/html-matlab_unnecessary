% Veri noktalarýný alýn
x = input('X verilerini girin: ');
y = input('Y verilerini girin: ');

% Polinom derecesini alýn
deg = input('Polinom derecesini girin: ');

% Polinom katsayýlarýný hesaplayýn
p = polyfit(x, y, deg);

% Veri noktalarýný ve polinomu grafikte gösterin
plot(x, y, 'o');
hold on;
xx = linspace(min(x), max(x), 100);
yy = polyval(p, xx);
plot(xx, yy);
xlabel('X Deðerleri');
ylabel('Y Deðerleri');
title(sprintf('Polinom Derecesi %d', deg));
legend('Veri Noktalarý', 'Uydurulan Polinom');
