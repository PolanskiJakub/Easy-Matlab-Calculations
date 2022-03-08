%macierz współczynników
A=[2,1,1,-1;1,1,-1,1;1,1,1,1;-1,2,-1,1];
%macierz wyrazów wolnych
B=[3;4;10;4];
%macierz uzupełniająca
U=[A,B];
%liczba niewiadomych
x=size(A,1);

%rzędy macierzy
rankA=rank(A);
rankU=rank(U);


if (rankA==rankU)&&(rankU==x)
    fprintf("Układ posiada jedno rozwiązanie \n");
elseif (rankA==rankU) && (rankA<x)
    fprintf("Układ posiada nieskończenie wiele rozwiązań \n");
else
    fprintf("Układ nie posiada rozwiązań");
end
 