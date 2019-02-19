% female definitions
parent(jill,john).
parent(john,pam).
parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,patt).
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
