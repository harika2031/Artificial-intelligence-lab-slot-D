patient(john_doe, heart_disease).
patient(jane_doe, diabetes).

disease(heart_disease).
disease(diabetes).

treatment(john_doe, medication).
treatment(jane_doe, diet_control).

cost(medication, 1000).
cost(diet_control, 500).

total_cost(P, C) :- patient(P, D), treatment(P, T), cost(T, C).
disease(P,D):-patient(P,D),disease(D).

