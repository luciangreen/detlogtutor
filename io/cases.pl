:- module(cases, [title/1, case/3]).
:- use_module('../prolog/detlogtutor').
:- use_module(engine).
title('detlogtutor').
ex_g(E) :- rnd_pick([big_members, pairs, splits, selects], E).
list_g(L) :- rnd_int(0, 4, N), length(L, N), maplist([X]>>rnd_int(0, 6, X), L).
case(expected, [E, L], expected) :- ex_g(E), list_g(L).
case(grade_model, [E], grade_model) :- ex_g(E).
case(grade_mistake, [E, W], grade_mistake) :- findall(E0-W0, wrong_answer(E0, W0, _), Ps), rnd_pick(Ps, E-W).
case(task, [E], task) :- ex_g(E).
grade_model(E, G) :- model_answer(E, A), grade(E, A, G).
grade_mistake(E, W, G) :- wrong_answer(E, W, A), grade(E, A, G).
task(E, T) :- exercise(E, T, _).
