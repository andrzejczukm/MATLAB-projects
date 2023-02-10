function [c,d,det] = cholesky(a, b)
%Funkcja jest zmodyfikowaną wersją metody cholesky'ego-banachiewicza. Na
%wejście przyjmuje wektory a,b - są to dwie przekątne naszej macierzy
%trojdiagonalnej. Funkcja liczy dwie przekatne macierzy L, ze wzoru 
%A = LL^{T} i zapisuje je jako wektory c i d. Dodatkowo fukcja liczy
%wyznacznik macierzy A wykorzystując juz policzoną macierz L ze wzoru 
%det(A) = det(L)*det(L^T) = det(L)^2

n = length(a);
c = zeros(1,n);
d = zeros(1,n-1);
c(1) = sqrt(a(1));
d(1) =  b(1)./c(1);    
for k=2:(n-1)
    c(k) = sqrt(a(k)-(d(k-1)).^2);
    d(k) = b(k)./c(k);    
end

c(n) = sqrt(a(n)-(d(n-1)).^2);

det = 1;
for m=1:n
    det = det.*c(m);
end

det = det.^2;
