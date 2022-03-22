%% Metoda gradaientowa

clear all
close all


A = [2, 1, 1, -1; 1, 1, -1, 1; 1, 1, 1, 1; -1, 2, -1, 1];
B = [3; 4; 10; 4];
x0 = [0; 0; 0; 0];

X = MetodaGradientowa(A,B,x0, 10e-8, 10e-8);

function result = MetodaGradientowa(A,B, x0, TolX, TolFun)

fun = @(x) mean(abs(A*[x(1); x(2); x(3); x(4)] - B));
options = optimset('TolX', TolX, 'TolFun', TolFun);
[x, ~, ~, ~] = fminunc(fun, x0, options);
result = x;
end


