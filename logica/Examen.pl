descendiente(fortran,algon).
descendiente(fortran,basic).
descendiente(fortran,pli).
descendiente(algon,simula).
descendiente(algon,pli).
descendiente(algon,basic).
descendiente(algon,clu).
descendiente(basic,visualbasic).
descendiente(basic,superbasic).
descendiente(pli,pls).
descendiente(pli,cpm).
descendiente(pli,plc).
descendiente(simula,smalltalk).
descendiente(smalltalk,self).
descendiente(smalltalk,objectivec).
descendiente(smalltalk,python).
descendiente(smalltalk,ruby).
descendiente(smalltalk,scheme).
descendiente(self,javascript).

%---------------------------------------------------------------------------------------------------------------------------

%Definir los hechos de los lenguajes derivados de Fortran siguiendo el orden de las flechas (Valor 30 puntos) 

%Muestre los derivados directos de Fortran  (Valor 10 puntos)
%descendiente(fortran,X).
%X = algon ;
%X = basic ;
%X = pli.  

%¿Es derivado Javascript de Self (devolverá true o false; Valor 10 puntos) 
%descendiente(self,javascript).
%true 

%---------------------------------------------------------------------------------------------------------------------------

%¿Es SuperBasic lenguaje hermano de VisualBasic? (devolverá true o false; Valor 10 puntos) 
hermano(H1,H2):-
descendiente(Padre,H1),
descendiente(Padre,H2),
H1 \= H2.
%hermano(visualbasic,superbasic).
%true.

%---------------------------------------------------------------------------------------------------------------------------

%Invente una regla. (Valor 10)  
primos(L1, L2) :-
    descendiente(P1, L1),
    descendiente(P2, L2),
    P1 \= P2,
    descendiente(Abuelo, P1),
    descendiente(Abuelo, P2).
%primos(visualbasic, pls).
%true

%---------------------------------------------------------------------------------------------------------------------------

%Invente una regla que utilice una expresión aritmética. (Valor 15)  
  valor_lenguaje(L, R) :-
    descendiente(_, L),
    R is 5 + 5.

%?- valor_lenguaje(visualbasic,R).
%R = 10.
%?- valor_lenguaje(pyhton,R).
%false.

%---------------------------------------------------------------------------------------------------------------------------

%Invente una regla que utilice un comparador. (Valor 15)  
ordenar(X, Y, Primero, Segundo) :-
(X @< Y -> Primero = X, Segundo = Y ; Primero = Y, Segundo = X).
%?- ordenar(superbasic,visualbasic,Primero,Segundo).
%Primero = superbasic,
%Segundo = visualbasic.
%?- ordenar(fortran,algon,Primero,Segundo).
%Primero = algon,
%Segundo = fortran.
