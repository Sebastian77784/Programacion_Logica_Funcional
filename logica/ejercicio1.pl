ceo(mark,sherly).

coo(sherly,david).
coo(sherly,timothy).
coo(sherly,mike).
coo(sherly,elliot).
coo(sherly,lori).

cmo(elliot,rebecca).
cmo(elliot,heather).










%Quién es el jefe del Rebecca? 
cmo(X,rebecca). X = elliot
%¿Es jefe Mark del jefe de Rebecca?
ceo(mark,rebecca).
false.
%¿Es Lori jefe de alguien?
coo(lori,X).
false.
%Mostrar empleados del jefe de Heather
cmo(X,heather), cmo(X,Y).
X = elliot,
Y = rebecca
%¿Es Timothy jefe de Rebecca?
coo(timothy,rebecca).
false
%Mostrar compañeros de nivel de Mike
coo(X,mike), coo(X,Y).
X = sherly,
Y = david ;
X = sherly,
Y = timothy ;
X = sherly,
Y = mike ;
X = sherly,
Y = elliot ;
X = sherly,
Y = lori
%¿Es el jefe de Rebeca compañero de nivel de David?
cmo(X,rebecca), coo(Y,X), coo(Y,Z).
X = elliot,
Y = sherly,
Z = david ;
X = elliot,
Y = sherly,
Z = timothy ;
X = elliot,
Y = sherly,
Z = mike ;
X = Z, Z = elliot,
Y = sherly ;
X = elliot,
Y = sherly,
Z = lori.
%¿Es compañero de nivel Mike de Lori?
coo(X,mike), coo(Y,lori).X = Y, Y = sherl