������(X, Y) :- name(X, L), name(Y, M), ������_1(L, M).

������_1([], [_|_]).
������_1([X|_], [Y|_]) :- X < Y.
������_1([H|Q], [H|S]) :- ������_1(Q, S).
%���������%
������_1([], []) :- !.

