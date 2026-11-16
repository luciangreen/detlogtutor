% detlogtutor: exercises in turning nondeterministic Prolog into deterministic code, graded
% automatically. Each exercise has a nondeterministic reference (its solutions, in order, are
% the expected answer); a student's answer must give that list as its one and only solution,
% on every input up to a size bound. Grades are pass, wrong(Input, Expected, Got), or
% nondeterministic(Input, Solutions).
%?- exercise(big_members, Task, _), grade(big_members, [L, O]>>include([X]>>(X > 2), L, O), G).   % G = pass
%?- grade(big_members, [L, O]>>(member(O, L), O > 2), G).      % G = wrong(...): one element is not the list
%?- grade(pairs, [L, O]>>findall(X-Y, (member(X, L), member(Y, L)), O), G).   % G = pass
:- module(detlogtutor, [exercise/3, expected/3, inputs/1, grade/3, model_answer/2, wrong_answer/3]).
:- use_module(library(lists)).
:- use_module(library(apply)).

% exercise(Name, Task, Reference): Reference is a nondeterministic call(Ref, Input, Solution).
exercise(big_members, "List the members greater than 2, in order, as one list.", [L, X]>>(member(X, L), X > 2)).
exercise(pairs, "List every pair X-Y of members, in order, as one list.", [L, X-Y]>>(member(X, L), member(Y, L))).
exercise(splits, "List every way to split the list in two, as A+B pairs, as one list.", [L, A+B]>>append(A, B, L)).
exercise(selects, "List every element with the rest, as X/Rest pairs, as one list.", [L, X/R]>>select(X, L, R)).

model_answer(big_members, [L, O]>>include([X]>>(X > 2), L, O)).
model_answer(pairs, [L, O]>>findall(X-Y, (member(X, L), member(Y, L)), O)).
model_answer(splits, [L, O]>>findall(A+B, append(A, B, L), O)).
model_answer(selects, [L, O]>>findall(X/R, select(X, L, R), O)).

% Mistakes students make, each wrong on some input.
wrong_answer(big_members, first_only, [L, O]>>(include([X]>>(X > 2), L, [F|_]) -> O = [F] ; O = [])).
wrong_answer(big_members, not_a_list, [L, O]>>(member(O, L), O > 2)).
wrong_answer(pairs, no_repeats, [L, O]>>findall(X-Y, (member(X, L), member(Y, L), X \== Y), O)).
wrong_answer(splits, forgets_empty, [L, O]>>findall(A+B, (append(A, B, L), A \== []), O)).
wrong_answer(selects, sorted, [L, O]>>(findall(X/R, select(X, L, R), O0), msort(O0, O))).

inputs(L) :- between(0, 3, N), length(L, N), maplist([X]>>member(X, [1, 3, 4]), L).
expected(Ex, In, Sols) :- exercise(Ex, _, Ref), findall(S, call(Ref, In, S), Sols).

% grade(+Exercise, +Answer, -Grade): the first input (smallest first) where the answer goes wrong.
grade(Ex, Ans, G) :- ( inputs(In), problem(Ex, Ans, In, P) -> G = P ; G = pass ).
problem(Ex, Ans, In, P) :- expected(Ex, In, Want), findall(O, limit(3, call(Ans, In, O)), Os),
    ( Os = [Got] -> Got \== Want, P = wrong(In, Want, Got) ; Os = [] -> P = wrong(In, Want, fails) ; P = nondeterministic(In, Os) ).
