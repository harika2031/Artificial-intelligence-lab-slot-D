female(kavitha).
female(ramya).

male(ganesh).
male(kiran).

parent(ganesh,kiran).
parent(ganesh,ramya).
parent(kavitha,kiran).
parent(kavitha,ramya).

father(X,Y):-parent(X,Y),male(X).
mother(X,Y):-parent(X,Y),female(X).
sister(X,Y):-parent(Z,X),parent(Z,Y),female(X), X\==Y.
brother(X,Y):-parent(Z,X),parent(Z,Y),male(X), X\==Y.