categoria(superfamily,hominoidea).
categoria(family,hominidea).
categoria(family,hylobatidae).
categoria(subfamily,homininae).
categoria(subfamily,ponginae).
categoria(tribe,hominini).
categoria(tribe,gorillini).
categoria(genus,homo).
categoria(genus,pan).
categoria(genus,gorilla).
categoria(genus,pongo).
categoria(genus,hylobates).

descendiente(hominoidea,hominidea).
descendiente(hominoidea,hylobatidae).

descendiente(hylobatidae,hylobates).

descendiente(hominidea,ponginae).
descendiente(hominidea,homininae).

descendiente(ponginae,pongo).

descendiente(homininae,gorillini).
descendiente(homininae,hominini).

descendiente(gorillini,gorilla).

descendiente(hominini,homo).
descendiente(hominini,pan).

descendiente(pan,bonobo).
descendiente(pan,chimpanzee).
descendiente(gorilla,gorilla).
descendiente(pongo,orangutan).
descendiente(homo,human).
subfamily(X,Y):- descendiente(Z,X), descendiente(A,Z), descendiente(E,Y), descendiente(W,E).
family(X,Y):- descendiente(A,X), descendiente(B,A), descendiente(D,Y), descendiente(E,D).

%1- Es el gorila descendiente de hominini?
%descendiente(hominini,gorilla).
%false.

%2- ¿Es el Homo hermano del gorila?
%descendiente(X,homo), descendiente(X,gorilla).
%false

%3- ¿Son el Homo y el Gorilla de la misma subfamilia?
%subfamily(homo,gorilla).
%true 

%4- ¿Tiene Hominini la misma familia que Pongo?
%family(hominini,pongo).
%true.

%5- ¿Quiénes son los descendientes directos de una tribu?
%categoria(tribe,X), descendiente(X,Y).
%X = hominini,
%Y = homo ;
%X = hominini,
%Y = pan ;
%X = gorillini,
%Y = gorilla.

%6- ¿Cuál es la superfamilia a la que pertenece Hylobates?
%categoria(superfamily,X),descendiete(X,Y), descendietne(Y,hylobates).
%X = hominoidea,
%Y = hylobatidae

%7- ¿Qué géneros comparten la misma subfamilia con Pan?
%descendiente(X,pan),descendiente(Y,X), descendiente(Y,Z), descendiente(Z,A),categoria(Q,A).
%X = hominini,
%Y = homininae,
%Z = gorillini,
%A = gorilla,
%Q = genus ;
%X = Z, Z = hominini,
%Y = homininae,
%A = homo,
%Q = genus ;
%X = Z, Z = hominini,
%Y = homininae,
%A = pan,
%Q = genus

%8- ¿Cuál es el ancestro común más cercano entre Homo y Gorilla?

%9- ¿Es el orangután un homínido?

%10- ¿Cuáles son todas las especies que pertenecen a la familia Hominidae?

%11- ¿Qué géneros son hermanos taxonómicos de Homo?

%12 -¿Comparten Homo y Hylobates la misma familia?

%13- ¿Cuáles son los descendientes directos de la subfamilia Homininae?

%14- ¿Qué géneros están bajo la familia Hominidae?

%15- ¿Cuál es la ruta taxonómica completa desde Homo hasta la superfamilia?