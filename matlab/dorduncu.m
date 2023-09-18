g = 9.81;
p = 1000;
A = 0.25;
m = 20;
cd = 0:0.1:1.5; % corrected the range of cd values

v = sqrt(2*m*g./(p*A*cd)); % corrected the formula to use the range of cd values
plot(cd,v,'LineWidth',2) % corrected the plot to use cd on x-axis and v on y-axis
xlabel('sürtünme katsayýsý cd');
ylabel('terminal hýz');
title('Sürtünme katsayýsýna göre terminal hýzýn deðiþimi');
