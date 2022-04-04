%% zloty podzial
clear all;
close all;

f = @(x) x+log10(x)-sin(x).^2;
fp = @(x) (1/(x*log(10)) - 2*sin(x)*cos(x) + 1);
x0 = 1; 
N = 10; 
tol = 1E-10;
x(1) = x0;
n = 2; 
nfinal = N + 1; 
while (n <= N + 1)
  fe = f(x(n - 1));
  fpe = fp(x(n - 1));
  x(n) = x(n - 1) - fe/fpe;
  if (abs(fe) <= tol)
    nfinal = n; 
    break;
  end
  n = n + 1;
end





function y = funct(x)
           y=x+log10(x)-sin(x)^2;
end
    
function y = funct2(x)
           y=x^2+log10(x)-sin(x);
end




