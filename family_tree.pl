male(rajesh).
male(amit).
male(rohan).

female(sunita).
female(priya).
female(sneha).

parent(rajesh,amit).
parent(sunita,amit).
parent(rajesh,priya).
parent(sunita,priya).
parent(amit,sneha).
parent(priya,rohan).

father(X,Y):- male(X),parent(X,Y).
mother(X,Y):- female(X),parent(X,Y).

brother(X,Y):- male(X),parent(Z,X),parent(Z,Y),X\=Y.
sister(X,Y):- female(X),parent(Z,X),parent(Z,Y),X\=Y.

grandfather(X,Y):- male(X),parent(X,Z),parent(Z,Y).
grandmother(X,Y):- female(X),parent(X,Z),parent(Z,Y).

uncle(X,Y):- brother(X,Z),parent(Z,Y).
aunt(X,Y):- sister(X,Z),parent(Z,Y).

ancestor(X,Y):- parent(X,Y).
ancestor(X,Y):- parent(X,Z),ancestor(Z,Y).

/* Queries

father(X,amit).
mother(X,priya).
grandfather(X,sneha).
sister(X,amit).
uncle(X,rohan).
ancestor(X,sneha).
father(rajesh,amit).
mother(sunita,priya).
grandfather(rajesh,sneha).
brother(amit,priya).
aunt(priya,sneha).
