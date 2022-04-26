%% Spline gotowa metoda ale trzeba opisac jak dziala

X = [10, 20, 30, 40, 50];
Y = [0.98, 0.93, 0.86, 0.76, 0.64];
xx = 1:1:50;
figure(1)

yy = interp1(X,Y,xx,'spline');
x0 = 21;

plot(X,Y,'o',xx,yy)


