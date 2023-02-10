function [] = wywolanie_dobry(x,a,b,m,funk)

%funkcja ma za zadania narysować wykres funkcji, wykres wielomianu
%interpolacyjnego oraz wykres błędu interpolacji. Wykres Funkcji i
%wielomianu interpolacyjnego umieszczam na jednej osi tak aby łatwo było
%porównać jak bardzo zbliżone są ich kształty
%funkcja na wejscie przyjmuje wektor węzłów x, a - początek przedziału, b-
%koniec przedziału m - liczbę równooddalonych argumentów dla których mamy
%policzyć naszą funkcje, wielomian i błąd oraz funk - przyjmowaną funkcje

h = (b-a)/(m-1);
p = a + (0:m-1)*h;
y = funk(x);
y2 = funk(p);
f = newton_dobry(x,y,p);
blad = abs(y2-f);


figure;

plot(p,y2,'-b',p,f,'-r')
xlabel('x');
ylabel('Funkcja');
title('Dokładna wartość funkcji vs wartość wielomianu interpolacyjnego','FontSize',8);
legend('Wartość funkcji', 'Wartość wielomianu interpolacyjnego', Location = 'northoutside')

figure;
plot(p,blad)
xlabel('x');
ylabel('Wartość błędu');
title('Wartość błędu interpolacji','FontSize',8);


