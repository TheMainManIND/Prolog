is_member(X, [X|_]).

    is_member(X, [_|T]):- is_member(X,T).

    remove_dups([], []).

    remove_dups([H|T], R):- is_member(H, T),
							remove_dups(T, R).

    remove_dups([H|T], [H|R]):- not(is_member(H, T)),
								remove_dups(T, R).