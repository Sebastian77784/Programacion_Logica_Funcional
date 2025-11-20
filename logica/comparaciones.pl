%Comparar area del circulo
area_circulo(Radio,Area):- Area is pi * Radio ** 2.

%Comparar_area(10,12 Resultado).
comparar_area(Radio, Limite, RESULTADO):-
area_circulo(Radio,Area),
(Area > Limite -> RESULTADO = 'Mayor';
Area =:= Limite -> RESULTADO ='Igual';
RESULTADO = 'Menor'
).
%comparar_area(1,12,RESULTADO).
%RESULTADO = 'Menor'

%Comparar perimetro de un cuadrado
comparar_perimetro(Lado, Limite, Resultado):-
Perimetro is Lado * 4,
(Perimetro > Limite -> Resultado = 'Mayor';
Perimetro =:= Limite -> Resultado = 'Igual';
Resultado = 'Menor'
).
%comparar_perimetro(4,12,Resultado).
%Resultado = 'Mayor'.

%comparar si el numero es positivo o negativo
comparar_numero(X,R):- 
(X < 0 -> R = 'NEGATIVO';
X = 0 -> R = 'Es igual a 0';
X > 0 -> R = 'Positivo').
%comparar_numero(8,R).
%R = 'Positivo'.
%?- comparar_numero(-8,R).
%R = 'NEGATIVO'.
%?- comparar_numero(0,R).
%R = 'Es igual a 0'.

%Comparar la raiz cuadrada con un valor
comparar_raiz(X, Y, R):- Raiz is sqrt(X),
(Raiz > Y -> R = 'Mayor';
Raiz =:= Y -> R = 'Igual';
R = 'Menor').
%comparar_raiz(25,5,R).
%R = 'Igual

%Calcular el area de un triangulo
calcular_at(X,Y,R):- Area is (X*Y)/2,
(Area > 50 -> R = 'Afirmativo';
Area =:= 50 -> R = 'Igual';
R = 'Negativo').
%calcular_at(10,10,R).
%R = 'Igual'.
%?- calcular_at(5,8,R).
%R = 'Negativo'.
%?- calcular_at(10,10,R).
%R = 'Igual'.
%?- calcular_at(10,20,R).
%R = 'Afirmativo'.

%Verificar si el numero es par o impar 
verificar_ip(X, R):- Ver is X mod 2,
(Ver =:= 0 -> R ='Par';
 R = 'Impar' ).
%verificar_ip(2,R).
%R = 'Par'.
%?- verificar_ip(3,R).
%R = 'Impar'.

%Comparar el Logaritmo Natural
comparar_logn(X,Y,R):- Logaritmo is log(X)/log(2),
(Logaritmo > Y -> R = 'MayoR';
Logaritmo =:= Y -> R = 'Igual';
R = 'Menor').
%comparar_logn(2,1,R).
%R = 'Igual'.
%?- comparar_logn(4,1,R).
%R = 'MayoR'.
%?- comparar_logn(4,100,R).
%R = 'Menor'.

%Calcular la potencia y verificar si supera 100
verificar_potencia(X,Y,R):- Potencia is X ^ Y, 
(Potencia > 100 -> R = 'Si supera';
Potencia =:= 100 -> R = 'Igual';
R = 'No supera').
%verificar_potencia(5,5,R).
%R = 'Si supera'.
%?- verificar_potencia(5,2,R).
%R = 'No supera'.
%verificar_potencia(10,2,R).
%R = 'Igual'.