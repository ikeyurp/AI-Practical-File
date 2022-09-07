% Write a program which contains three predicates: male, female, parent. Make rules for following family relations: father, mother, grandfather, grandmother, brother, sister, uncle, aunt, nephew and niece, cousin.
male(john).
male(james).
male(michael).
male(paul).
male(tom).

female(mary).
female(sarah).
female(linda).
female(kate).

parent(john, james).
parent(john, michael).
parent(mary, james).
parent(mary, michael).
parent(paul, tom).
parent(sarah, tom).

father(X, Y) :- parent(X, Y), male(X).
mother(X, Y) :- parent(X, Y), female(X).
grandfather(X, Y) :- parent(X, Z), parent(Z, Y), male(X).
grandmother(X, Y) :- parent(X, Z), parent(Z, Y), female(X).
brother(X, Y) :- parent(Z, X), parent(Z, Y), male(X), not(X=Y).
sister(X, Y) :- parent(Z, X), parent(Z, Y), female(X), not(X=Y).
uncle(X, Y) :- brother(X, Z), parent(Z, Y), male(X).
aunt(X, Y) :- sister(X, Z), parent(Z, Y), female(X).
nephew(X, Y) :- uncle(Y, X), male(X).
nephew(X, Y) :- aunt(Y, X), male(X).
niece(X, Y) :- uncle(Y, X), female(X).
niece(X, Y) :- aunt(Y, X), female(X).
cousin(X, Y) :- uncle(Z, X), uncle(Z, Y); aunt(Z, X), aunt(Z, Y).