отец(John, Bob).
отец(David, Peter).
отец(Peter, John).
отец(John, Mary).
отец(John, Judy).

мать(Angel, Bob).
мать(Helen, John).
мать(Angel, Mary).
мать(Angel, Judy).

мужчина(John).
мужчина(David).
мужчина(Peter).
мужчина(Bob).

женщина(Angel).
женщина(Helen).
женщина(Mary).
женщина(Judy).

родитель(John, Bob).
родитель(David, Peter).
родитель(Peter, John).
родитель(John, Mary).
родитель(Angel, Bob).
родитель(Helen, John).
родитель(Angel, Mary).
родитель(Angel, Judy).
родитель(John, Judy).


различны(X, Y):-
    X \= Y.

является_матерью(X):-
    мать(X, _).
является_отцом(X):-
    отец(X, _).
является_сыном(X):-
    мужчина(X), родитель(_, X).
является_сестрой(X, Y):-
    женщина(X), различны(X, Y), родитель(Par, X), родитель(Par, Y).
дедушка(X, Y):-
    мужчина(X), родитель(Par, Y), родитель(X, Par).
общие_родители(X, Y):-
    родитель(Par, X), родитель(Par, Y).



















