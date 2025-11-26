tipo(red1,estrella).
tipo(red2,bus).
velocidad(red1, 1000).
velocidad(red2, 100).

contenido(red1,pc1).
contenido(red1,pc2).
contenido(red1,pc3).
contenido(red1,pc4).
contenido(red1,ss1).

contenido(red2,ss1).
contenido(red2,pc5).
contenido(red2,pc6).
contenido(red2,pc7).
contenido(red2,s1).

network(router,red1).
network(router,red2).

redes0(router,ss1).
redes0(router,pc5).
redes0(router,pc6).
redes0(router,pc7).
redes0(router,s1).

redes1(ss1,pc1).
redes1(ss1,pc2).
redes1(ss1,pc3).
redes1(ss1,pc4).

%Preguntas;
%Desarrolle los hechos en base a la imagen.
%Muestre las PCs de la topología de estrella (red1).
%redes1(ss1,X).
%X = pc1 ;
%X = pc2 ;
%X = pc3 ;
%X = pc4.

%Desarrolle una regla que determine si un dispositivo pertenece a una red.
regla(R,D):- contenido(R,D).
%regla(red1,pc3).
%true.
%?- regla(red1,pc5).
%false.

%¿Puede el S1 enviar ping a la pc2?
ping(D1,D2):- 
contenido(R,D1),
contenido(R,D2).
%ping(pc5,pc2).
%false.

%Invente una regla.
misma_red(D1, D2) :-
contenido(R, D1),
contenido(R, D2),
D1 \= D2.
%?- misma_red(pc4,pc5).
%false.
%?- misma_red(pc4,pc2).
%true.

%Invente una regla que utilice una expresión aritmética.
multiplicacion(X,Y,R):-  velocidad(X,X1), velocidad(Y,Y2), R is X1 * Y2.
%multiplicacion(red1,red2,R).
%R = 100000.

%Invente una regla que utilice un comparador.
comparacion(X,Y):-  
velocidad(X,X1), 
velocidad(Y,Y2), 
X1 > Y2.
%comparacion(red1,red2).
%true.
%?- comparacion(red2,red1).
%false.


