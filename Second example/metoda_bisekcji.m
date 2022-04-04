clear all;
close all;


a=0;
b=4;

x1=(a+b)/2;
Tol=10^-5;
y=funct(x1);
if(y==0)
    return;
end

x1=b;
while(abs(a-b)>Tol)
    x1=(a+b)/2;
        if(funct(a)*funct(x1)<0)
            b=x1;
        elseif(funct(x1)*funct(b)<0)
            a=x1;
        end
end

    function y = funct(x)
           y=x+log10(x)-sin(x)^2;
    end
    
    function y = funct2(x)
           y=x^2+log10(x)-sin(x);
    end

