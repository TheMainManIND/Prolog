  conc([],L2,L2).

    conc([H|T1],L2,[H|T2]):- conc(T1,L2,T2).

    reverse([],[]).

    reverse([H|T],R):- reverse(T,R1),
					conc(R1,[H],R).

    isEqual([],[]):- true.

    isEqual([H1|_],[H2|_]):- false.

    isEqual([H1|T1],[H1|T2]):- isEqual(T1,T2).

    palindrome(L):- reverse(L,R),
					isEqual(L,R).