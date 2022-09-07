%Write a prolog program for medical diagnosis system of childhood diseases.
childhood_diseases :- write('Hi! I am a medical diagnosis system for childhood diseases. I will ask you a few questions about the symptoms you are experiencing, and I will try to diagnose your problem. Are you ready?'), nl, read(X), (X = yes -> diagnosis; write('Ok, see you later!')).
diagnosis :- write('Are you having a fever?'), nl, read(X), (X = yes -> fever; write('I am sorry, I cannot help you.')).
fever :- write('Do you have a cough?'), nl, read(X), (X = yes -> cough; write('You may have a viral fever.')).
cough :- write('Do you have a runny nose?'), nl, read(X), (X = yes -> runny_nose; write('You may have a cold.')).
runny_nose :- write('Do you have a sore throat?'), nl, read(X), (X = yes -> sore_throat; write('You may have a flu.')).
sore_throat :- write('Do you have a headache?'), nl, read(X), (X = yes -> headache; write('You may have a hay fever.')).
headache :- write('Do you have a swollen lymph nodes?'), nl, read(X), (X = yes -> swollen_lymph_nodes; write('You may have a sinusitis.')).
swollen_lymph_nodes :- write('You may have a mononucleosis.').