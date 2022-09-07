%Write a program to find factorial of a number in prolog
factorial(0,1).
factorial(N,F):-
N>0,
N1 is N-1,
factorial(N1,F1),
F is N*F1.