%% Grace LaMalva -- Program 2 - CUS 1174
% parent definitions
parent(jill,john).
parent(john,pam).
parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).

% female definitions
female(jill).
female(pam).
female(liz).
female(ann).
female(pat).

% male definitions
male(tom).
male(bob).
male(jim).
male(john).

%X is the mother of Y
mother(X, Y) :- parent(X,Y) , female(X).

%Y is an offspring of x
offspring(Y, X) :-  parent(X,Y).

%different (X,Y) :- X\=Y.


sister(X,Y) :- X\=Y, female(X) , parent(Z,X), parent(Z,Y).

predecessor(X,Y) :- parent(X,Y).
%predecessor(X,Y) :- predecessor(X,Y), parent(Y,Z).
predecessor(X,Y) :- parent(X,Z), predecessor(Z,Y).
