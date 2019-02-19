parent(jill,john).
parent(john, pam).
parent(pam, bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob, patt).
parent(pat,jim).

female(jill).
female(pam).
male(tom).
male(bob).
female(liz).
female(ann).
female(pat).
male(jim).
male(john).

mother(X, Y) :- 
//X is the mother of Y
offspring(Y, X) :- 
// Y is an offspring of x

