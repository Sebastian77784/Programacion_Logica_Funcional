valioso(oro).
valioso(plata).
le_gusta(juan,maria).
tiene(juan,libro).
tiene(maria,libro).
progenitor(clara,jose).
progenitor(tomas,jose).
progenitor(tomas,isabel).
progenitor(jose,ana).
progenitor(jose,patricia).
progenitor(patricia,jaime).

%¿Es ana tia de jaime?
progenitor(X,ana),progenitor(X,Z), progenitor(Z,jaime).
X = jose,
Z = patricia
%¿Es ana tia de isabel?
progenitor(X,ana), progenitor(X,Y), progenitor(Y,isabel).
false.