function [y2] = newton_dobry(x, y, p)
%Funkcja na wejściu przyjmuje: x - wektor węzłów, y - wektor wartości
%funkcji w podanych węzłach oraz p - wektor argumentów dla których mamy 
%policzyć wartości już zinterpolowanego wielomianu.
%Funkcja Newton ma za zadanie wyznaczenie wielomianu interpolacyjnego 
%dla podanych węzłów x i odpowiadajacych argumentom x wartości w funkcji.
%Następnie funkcja liczy uogólnionym schematem Hornera wartości wielomianu 
%w podanych argumentach p.



n = length(x);
d(:,1)=y';
for j=2:n
    for i=j:n
        d(i,j)= ( d(i-1,j-1)-d(i,j-1)) / (x(i-j+1)-x(i));
    end
end
c = diag(d)';

h = length(c)-1;
y2 = repmat(c(h+1),size(p));

for i =h:-1:1
    y2 = y2.*(p-x(i)) + c(i);
end
wynik = y2;