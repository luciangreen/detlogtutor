% Theorems about detlogtutor, proved by exhaustion. Run: swipl -g main -t halt proofs/theorems.pl
:- module(theorems, [main/0]).
:- use_module('../prolog/detlogtutor').
:- use_module(prove).
:- discontiguous theorem/1.
:- use_module(library(lists)).
:- use_module(library(apply)).
main :- prove_all(theorems).

% Domain: every exercise, its model answer and every planted mistake, on every list of up to 3 of 1, 3 and 4.

% 1. Every model answer passes its exercise.
theorem(model_answers_pass) :- forall(model_answer(Ex, A), grade(Ex, A, pass)).

% 2. Every planted mistake is caught.
theorem(mistakes_are_caught) :- forall(wrong_answer(Ex, _, A), ( grade(Ex, A, G), G \== pass )).

% 3. A wrong grade is genuine: on that input the answer's one solution really differs from the expected list.
theorem(wrong_grades_are_genuine) :-
    forall(( wrong_answer(Ex, _, A), grade(Ex, A, wrong(In, Want, Got)) ), ( expected(Ex, In, Want), Got \== Want )).

% 4. A nondeterministic answer is reported as such, with more than one solution.
theorem(nondeterminism_reported) :-
    forall(( wrong_answer(Ex, _, A), grade(Ex, A, nondeterministic(In, Os)) ), ( length(Os, N), N > 1, inputs(In) )).

% 5. Grading is deterministic: one grade per answer.
theorem(grading_is_deterministic) :-
    forall(( ( model_answer(Ex, A) ; wrong_answer(Ex, _, A) ) ), findall(G, grade(Ex, A, G), [_])).

% 6. The model answer equals the expected list on every input (the reference and answer agree).
theorem(model_equals_reference) :-
    forall(( model_answer(Ex, A), inputs(In) ), ( expected(Ex, In, W), call(A, In, O), O == W )).
