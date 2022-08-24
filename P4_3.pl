% Write predicates one converts centigrade temperatures to Fahrenheit, the other checks if a temperature is below freezing.
c_to_f(C,F) :-
    F is C * 9 / 5 + 32.

freezing(F) :-
    F =< 32.