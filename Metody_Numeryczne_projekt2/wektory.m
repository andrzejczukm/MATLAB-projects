function [a, b] = wektory(A)
%funkcja wyjmuje mi z macierzy tylko 2 potrzebne mi przekątne i zapisuje je
%jako wektory

a = diag(A)';
n = length(a);
b = zeros(1,n-1);

for k = 1:(n-1)
    b(k) = A(k+1,k);


end