����(John, Bob).
����(David, Peter).
����(Peter, John).
����(John, Mary).
����(John, Judy).

����(Angel, Bob).
����(Helen, John).
����(Angel, Mary).
����(Angel, Judy).

�������(John).
�������(David).
�������(Peter).
�������(Bob).

�������(Angel).
�������(Helen).
�������(Mary).
�������(Judy).

��������(John, Bob).
��������(David, Peter).
��������(Peter, John).
��������(John, Mary).
��������(Angel, Bob).
��������(Helen, John).
��������(Angel, Mary).
��������(Angel, Judy).
��������(John, Judy).


��������(X, Y):-
    X \= Y.

��������_�������(X):-
    ����(X, _).
��������_�����(X):-
    ����(X, _).
��������_�����(X):-
    �������(X), ��������(_, X).
��������_�������(X, Y):-
    �������(X), ��������(X, Y), ��������(Par, X), ��������(Par, Y).
�������(X, Y):-
    �������(X), ��������(Par, Y), ��������(X, Par).
�����_��������(X, Y):-
    ��������(Par, X), ��������(Par, Y).



















