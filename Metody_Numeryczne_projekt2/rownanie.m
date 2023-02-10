function [x] = rownanie(b, c, d)
%funkcja służy do obliczenia równania Ax=b, przy użyciu zmodyfikowanej
%metody choleckyego. Wiemy, że równanie Ax = b można policzyć przy użyciu
%wzoru L^{T}*Lx = b. 
%Na wejsciu przyjmujemy:
%c, d - dwie przekątne macierzy L w postaci wektorow
%b - wektor z równania "L^{T}*Lx = b"
n = length(c);
y = zeros(1,n);
y(1) = b(1)./c(1);   

for k=2:n
    y(k) =  (b(k)-(d(k-1).*y(k-1)))./c(k); 
end

x = zeros(1,n);  
x(n) = y(n)./c(n); 
for k = (n-1):-1:1
    x(k) = (y(k)-(d(k).*x(k+1)))./c(k); 
end


