%Suma
ejemplo_suma(X,Y, R) :- R is X+Y.
%RESULTADO: ejemplo_suma(10,2,R)
%ejemplo_suma(10,2,R).
%R = 12
ejemplo_resta(X,Y, R) :- R is X-Y.
%Resultado: ejemplo_resta(18,7,R)
%ejemplo_resta(18,7,R).
%R = 11.
ejemplo_multiplicacion(X,Y, R) :- R is X*Y.
%Resultado: ejemplo_multiplicacion(10,5,R).
%ejemplo_multiplicacion(10,5,R).
%R = 50.
ejemplo_division(X,Y,R1) :- R1 is X/Y.
%ejemplo_division(8,2,R1)
ejemplo_division2(X,Y, R2) :- R2 is X div Y.
%ejemplo_division(4,2, R2)
%ejemplo_division(8,2,R1), ejemplo_division2(4,2,R2).
%R1 = 4,
%R2 = 2
ejemplo_r_division(X,Y,R) :- R is X mod Y.
%ejemplo_r_division(5,3,R)
%ejemplo_r_division(5,3,R).
%R = 2
ejemplo_elevado(X,Y,R) :- R is X ^ Y.
%ejemplo_elevado(5,2,R)
%ejemplo_elevado(5,2,R).
%R = 25
ejemplo_negacion(X,R) :- R is -X.
%ejemplo_negacion(5,R)
%ejemplo_negacion(5,R).
%R = -5
ejemplo_valorabsoluto(X,R) :- R is abs(X).
%ejemplo_valorabsoluto(-4,R)
%ejemplo_valorabsoluto(-4,R).
%R = 4.
ejemplo_arcocoseno(X,R) :- R is acos(X).
%ejemplo_arcocoseno(0.5,R)
%ejemplo_arcocoseno(0.5,R).
%R = 1.0471975511965979
ejemplo_arcoseno(X,R) :- R is asin(X).
%ejemplo_arcoseno(0.8,R)
%ejemplo_arcoseno(0.8,R).
%R = 0.9272952180016123
ejemplo_arcotangente(X,R) :- R is atan(X).
%ejemplo_arcotangente(0.9,R) 
%ejemplo_arcotangente(0.9,R).
%R = 0.7328151017865066.
ejemplo_coseno(X,R) :- R is cos(X).
%ejemplo_coseno(0.7,R)
%ejemplo_coseno(0.7,R).
%R = 0.7648421872844885.
ejemplo_exponencial(X,R) :- R is exp(X).
%ejemplo_exponencial(7,R)
%ejemplo_exponencial(7,R).
%R = 1096.6331584284585
ejemplo_lognep(X,R) :- R is log(X).
%ejemplo_lognep(7,R)
%ejemplo_lognep(7,R).
%R = 1.9459101490553132.
ejemplo_logbase2(X,R) :- R is log(X)/log(2).
%ejemplo_logbase2(8,R)
%ejemplo_logbase2(8,R).
%R = 3.0.
ejemplo_seno(X,R) :- R is sin(X).
%ejemplo_seno(7,R)
%ejemplo_seno(7,R).
%R = 0.6569865987187891.
ejemplo_raizcuadrada(X,R) :- R is sqrt(X).
%ejemplo_raizcuadrada(9,R)
%ejemplo_raizcuadrada(9,R).
%R = 3.0.
ejemplo_tangente(X,R) :- R is tan(X).
%ejemplo_tangente(7,R)
%ejemplo_tangente(7,R).
%R = 0.8714479827243188.
redondeo(X, N, R) :-
    % Multiplica X por 10^N, redondea al entero más cercano y luego divide por 10^N
    Factor is 10**N,
    Z is X * Factor,
    ZA is round(Z),
    R is ZA / Factor.
%redondeo(1.8545875487,3,R)
%redondeo(1.784578754,3,R).
%R = 1.785.